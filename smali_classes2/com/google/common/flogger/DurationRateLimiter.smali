.class final Lcom/google/common/flogger/DurationRateLimiter;
.super Lcom/google/common/flogger/RateLimitStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;
    }
.end annotation


# static fields
.field private static final map:Lcom/google/common/flogger/LogSiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogSiteMap<",
            "Lcom/google/common/flogger/DurationRateLimiter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/google/common/flogger/DurationRateLimiter$1;

    invoke-direct {v0}, Lcom/google/common/flogger/DurationRateLimiter$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/DurationRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 122
    invoke-direct {p0}, Lcom/google/common/flogger/RateLimitStatus;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/common/flogger/DurationRateLimiter;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;J)Lcom/google/common/flogger/RateLimitStatus;
    .registers 6

    .line 64
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_c
    sget-object v1, Lcom/google/common/flogger/DurationRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    invoke-virtual {v1, p1, p0}, Lcom/google/common/flogger/LogSiteMap;->get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/DurationRateLimiter;

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/common/flogger/DurationRateLimiter;->checkLastTimestamp(JLcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p0

    return-object p0
.end method

.method static newRateLimitPeriod(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;
    .registers 4

    .line 55
    new-instance v0, Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;-><init>(ILjava/util/concurrent/TimeUnit;Lcom/google/common/flogger/DurationRateLimiter$1;)V

    return-object v0
.end method


# virtual methods
.method checkLastTimestamp(JLcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;)Lcom/google/common/flogger/RateLimitStatus;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 131
    :goto_9
    const-string v3, "timestamp cannot be negative"

    invoke-static {v2, v3}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/google/common/flogger/DurationRateLimiter;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_28

    .line 137
    # invokes: Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;->toNanos()J
    invoke-static {p3}, Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;->access$100(Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;)J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long p3, v4, v0

    if-ltz p3, :cond_25

    cmp-long p3, p1, v4

    if-gez p3, :cond_28

    .line 141
    :cond_25
    sget-object p0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    return-object p0

    .line 147
    :cond_28
    iget-object p3, p0, Lcom/google/common/flogger/DurationRateLimiter;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {p3, v2, v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    return-object p0
.end method

.method public reset()V
    .registers 5

    .line 159
    iget-object p0, p0, Lcom/google/common/flogger/DurationRateLimiter;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
