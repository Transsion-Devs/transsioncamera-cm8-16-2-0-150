.class public Lcom/benchmark/runtime/BTCStrategyManagement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/benchmark/runtime/BTCStrategyManagement;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;
    .registers 2

    .line 19
    sget-object v0, Lcom/benchmark/runtime/BTCStrategyManagement;->INSTANCE:Lcom/benchmark/runtime/BTCStrategyManagement;

    if-nez v0, :cond_19

    .line 20
    const-class v0, Lcom/benchmark/runtime/BTCStrategyManagement;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Lcom/benchmark/runtime/BTCStrategyManagement;->INSTANCE:Lcom/benchmark/runtime/BTCStrategyManagement;

    if-nez v1, :cond_15

    .line 22
    new-instance v1, Lcom/benchmark/runtime/BTCStrategyManagement;

    invoke-direct {v1}, Lcom/benchmark/runtime/BTCStrategyManagement;-><init>()V

    sput-object v1, Lcom/benchmark/runtime/BTCStrategyManagement;->INSTANCE:Lcom/benchmark/runtime/BTCStrategyManagement;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 24
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 26
    :cond_19
    :goto_19
    sget-object v0, Lcom/benchmark/runtime/BTCStrategyManagement;->INSTANCE:Lcom/benchmark/runtime/BTCStrategyManagement;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;
    .registers 2

    monitor-enter p0

    .line 35
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public reportQuota(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method
