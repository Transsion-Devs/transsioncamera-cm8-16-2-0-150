.class public abstract Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

.field public static final b:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    new-instance v2, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x20

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    .line 2
    new-instance v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    new-instance v3, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->b:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final a()Landroid/os/Bundle;
    .registers 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    .line 3
    sget-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->recycle(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 5
    const-string v0, "NexusFlow.Performance"

    const-string v1, "Failed to recycle Bundle"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;)V
    .registers 3

    const-string v0, "sb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    sget-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->b:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->recycle(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 9
    const-string v0, "NexusFlow.Performance"

    const-string v1, "Failed to recycle StringBuilder"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static b()Landroid/os/Bundle;
    .registers 3

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3
    sget-object v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v0

    .line 5
    :cond_14
    sget-object v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    const-string v1, "NexusFlow.Performance"

    const-string v2, "Bundle pool miss - bundle not properly reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static c()Ljava/lang/StringBuilder;
    .registers 3

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->b:Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 3
    sget-object v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v0

    .line 5
    :cond_14
    sget-object v1, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    const-string v1, "NexusFlow.Performance"

    const-string v2, "StringBuilder pool miss - not properly reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static final d()Ljava/lang/StringBuilder;
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
