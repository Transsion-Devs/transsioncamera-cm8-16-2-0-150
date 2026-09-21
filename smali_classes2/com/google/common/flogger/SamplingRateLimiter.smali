.class final Lcom/google/common/flogger/SamplingRateLimiter;
.super Lcom/google/common/flogger/RateLimitStatus;
.source "SourceFile"


# static fields
.field private static final map:Lcom/google/common/flogger/LogSiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogSiteMap<",
            "Lcom/google/common/flogger/SamplingRateLimiter;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final pendingCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/google/common/flogger/SamplingRateLimiter$1;

    invoke-direct {v0}, Lcom/google/common/flogger/SamplingRateLimiter$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/SamplingRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    .line 56
    new-instance v0, Lcom/google/common/flogger/SamplingRateLimiter$2;

    invoke-direct {v0}, Lcom/google/common/flogger/SamplingRateLimiter$2;-><init>()V

    sput-object v0, Lcom/google/common/flogger/SamplingRateLimiter;->random:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/google/common/flogger/RateLimitStatus;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/SamplingRateLimiter;->pendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/RateLimitStatus;
    .registers 4

    .line 46
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SAMPLE_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_22

    .line 51
    :cond_11
    sget-object v1, Lcom/google/common/flogger/SamplingRateLimiter;->map:Lcom/google/common/flogger/LogSiteMap;

    invoke-virtual {v1, p1, p0}, Lcom/google/common/flogger/LogSiteMap;->get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/SamplingRateLimiter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/SamplingRateLimiter;->sampleOneIn(I)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRandom()Ljava/util/Random;
    .registers 1

    .line 66
    sget-object v0, Lcom/google/common/flogger/SamplingRateLimiter;->random:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/google/common/flogger/SamplingRateLimiter;->pendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method sampleOneIn(I)Lcom/google/common/flogger/RateLimitStatus;
    .registers 3

    .line 81
    invoke-static {}, Lcom/google/common/flogger/SamplingRateLimiter;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_11

    .line 82
    iget-object p1, p0, Lcom/google/common/flogger/SamplingRateLimiter;->pendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    goto :goto_17

    .line 84
    :cond_11
    iget-object p1, p0, Lcom/google/common/flogger/SamplingRateLimiter;->pendingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    :goto_17
    if-lez p1, :cond_1a

    return-object p0

    .line 86
    :cond_1a
    sget-object p0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    return-object p0
.end method
