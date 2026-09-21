.class final Lcom/google/common/flogger/RateLimitStatus$LogGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/RateLimitStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogGuard"
.end annotation


# static fields
.field private static final guardMap:Lcom/google/common/flogger/LogSiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogSiteMap<",
            "Lcom/google/common/flogger/RateLimitStatus$LogGuard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pendingLogCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final shouldReset:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Lcom/google/common/flogger/RateLimitStatus$LogGuard$1;

    invoke-direct {v0}, Lcom/google/common/flogger/RateLimitStatus$LogGuard$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->guardMap:Lcom/google/common/flogger/LogSiteMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->shouldReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->pendingLogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/RateLimitStatus$1;)V
    .registers 2

    .line 143
    invoke-direct {p0}, Lcom/google/common/flogger/RateLimitStatus$LogGuard;-><init>()V

    return-void
.end method

.method static checkAndGetSkippedCount(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)I
    .registers 6

    .line 154
    sget-object v0, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->guardMap:Lcom/google/common/flogger/LogSiteMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/flogger/LogSiteMap;->get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;

    .line 156
    iget-object p2, p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->pendingLogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 157
    sget-object v0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    if-eq p0, v0, :cond_34

    iget-object v0, p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->shouldReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_34

    .line 162
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/google/common/flogger/RateLimitStatus;->reset()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2d

    .line 164
    iget-object p0, p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->shouldReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object p0, p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->pendingLogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    sub-int/2addr p2, v2

    return p2

    :catchall_2d
    move-exception p0

    .line 164
    iget-object p1, p1, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->shouldReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    throw p0

    :cond_34
    :goto_34
    const/4 p0, -0x1

    return p0
.end method
