.class public final Lorg/koin/core/context/GlobalContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/koin/core/context/KoinContext;


# static fields
.field public static final INSTANCE:Lorg/koin/core/context/GlobalContext;

.field private static _koin:Lorg/koin/core/Koin;

.field private static _koinApplication:Lorg/koin/core/KoinApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/koin/core/context/GlobalContext;

    invoke-direct {v0}, Lorg/koin/core/context/GlobalContext;-><init>()V

    sput-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final register(Lorg/koin/core/KoinApplication;)V
    .registers 2

    .line 43
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-nez p0, :cond_d

    .line 46
    sput-object p1, Lorg/koin/core/context/GlobalContext;->_koinApplication:Lorg/koin/core/KoinApplication;

    .line 47
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    sput-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    return-void

    .line 44
    :cond_d
    new-instance p0, Lorg/koin/core/error/KoinAppAlreadyStartedException;

    const-string p1, "A Koin Application has already been started"

    invoke-direct {p0, p1}, Lorg/koin/core/error/KoinAppAlreadyStartedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get()Lorg/koin/core/Koin;
    .registers 2

    .line 36
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KoinApplication has not been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKoinApplicationOrNull()Lorg/koin/core/KoinApplication;
    .registers 1

    .line 40
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koinApplication:Lorg/koin/core/KoinApplication;

    return-object p0
.end method

.method public getOrNull()Lorg/koin/core/Koin;
    .registers 1

    .line 38
    sget-object p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    return-object p0
.end method

.method public loadKoinModules(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    monitor-enter p0

    .line 74
    :try_start_6
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_18

    .line 73
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method

.method public loadKoinModules(Lorg/koin/core/module/Module;Z)V
    .registers 10

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    monitor-enter p0

    .line 70
    :try_start_6
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p2

    invoke-static/range {v1 .. v6}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    .line 69
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method

.method public startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    .line 61
    const-string v0, "appDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 62
    :try_start_6
    sget-object v0, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication$Companion;->init()Lorg/koin/core/KoinApplication;

    move-result-object v0

    .line 63
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-direct {v1, v0}, Lorg/koin/core/context/GlobalContext;->register(Lorg/koin/core/KoinApplication;)V

    .line 64
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->createEagerInstances()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    .line 66
    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startKoin(Lorg/koin/core/KoinApplication;)Lorg/koin/core/KoinApplication;
    .registers 3

    .line 55
    const-string v0, "koinApplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 56
    :try_start_6
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-direct {v0, p1}, Lorg/koin/core/context/GlobalContext;->register(Lorg/koin/core/KoinApplication;)V

    .line 57
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->createEagerInstances()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 58
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopKoin()V
    .registers 2

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/koin/core/Koin;->close()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_12

    :cond_b
    :goto_b
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 53
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_9

    .line 50
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0

    throw v0
.end method

.method public unloadKoinModules(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_6
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)V

    .line 83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    .line 81
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadKoinModules(Lorg/koin/core/module/Module;)V
    .registers 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    monitor-enter p0

    .line 78
    :try_start_6
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)V

    .line 79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_17

    .line 77
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
