.class final Lcom/google/common/flogger/CountingRateLimiter;
.super Lcom/google/common/flogger/RateLimitStatus;
.source "SourceFile"


# static fields
.field private static final map:Lcom/google/common/flogger/LogSiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogSiteMap<",
            "Lcom/google/common/flogger/CountingRateLimiter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final invocationCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/google/common/flogger/CountingRateLimiter$1;

    invoke-direct {v0}, Lcom/google/common/flogger/CountingRateLimiter$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/CountingRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Lcom/google/common/flogger/RateLimitStatus;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/common/flogger/CountingRateLimiter;->invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/RateLimitStatus;
    .registers 4

    .line 53
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_c
    sget-object v1, Lcom/google/common/flogger/CountingRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    invoke-virtual {v1, p1, p0}, Lcom/google/common/flogger/LogSiteMap;->get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/CountingRateLimiter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/CountingRateLimiter;->incrementAndCheckLogCount(I)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method incrementAndCheckLogCount(I)Lcom/google/common/flogger/RateLimitStatus;
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/google/common/flogger/CountingRateLimiter;->invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_c

    return-object p0

    :cond_c
    sget-object p0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    return-object p0
.end method

.method public reset()V
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/google/common/flogger/CountingRateLimiter;->invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
