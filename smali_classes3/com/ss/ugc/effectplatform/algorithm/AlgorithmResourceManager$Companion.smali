.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
    .registers 2

    .line 142
    # getter for: Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
    invoke-static {}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 143
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AlgorithmManager has not initialized,call AlgorithmManager#initialize first!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    # getter for: Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
    invoke-static {}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object v0

    if-nez v0, :cond_19

    .line 118
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->access$setINSTANCE$cp(Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 119
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    goto :goto_21

    .line 116
    :cond_19
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate initialization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_17

    throw p1
.end method

.method public final isInitialized()Z
    .registers 1

    .line 148
    # getter for: Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;
    invoke-static {}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->access$getINSTANCE$cp()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
