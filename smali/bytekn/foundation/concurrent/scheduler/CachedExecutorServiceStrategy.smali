.class public final Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/concurrent/scheduler/ExecutorServiceStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy$Companion;


# instance fields
.field private final keepAliveTimeoutMillis:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;->Companion:Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/ThreadFactory;)V
    .registers 5

    const-string v0, "threadFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;->keepAliveTimeoutMillis:J

    iput-object p3, p0, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public get()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    const/4 v0, 0x5

    .line 12
    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/CachedExecutorServiceStrategy;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    const-string v0, "Executors.newScheduledTh\u2026READ_SIZE, threadFactory)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
