.class public abstract Lcom/google/common/flogger/LogContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/LoggingApi;
.implements Lcom/google/common/flogger/backend/LogData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LogContext$MutableMetadata;,
        Lcom/google/common/flogger/LogContext$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LOGGER:Lcom/google/common/flogger/AbstractLogger<",
        "TAPI;>;API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;",
        "Lcom/google/common/flogger/backend/LogData;"
    }
.end annotation


# static fields
.field private static final LITERAL_VALUE_MESSAGE:Ljava/lang/String;


# instance fields
.field private args:[Ljava/lang/Object;

.field private final level:Ljava/util/logging/Level;

.field private logSite:Lcom/google/common/flogger/LogSite;

.field private metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

.field private rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

.field private templateContext:Lcom/google/common/flogger/backend/TemplateContext;

.field private final timestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 326
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;Z)V
    .registers 5

    .line 358
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCurrentTimeNanos()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/flogger/LogContext;-><init>(Ljava/util/logging/Level;ZJ)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;ZJ)V
    .registers 6

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 339
    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    .line 342
    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

    .line 345
    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    .line 348
    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    .line 373
    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    .line 374
    iput-wide p3, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    if-eqz p2, :cond_23

    .line 376
    sget-object p1, Lcom/google/common/flogger/LogContext$Key;->WAS_FORCED:Lcom/google/common/flogger/MetadataKey;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method private everyImpl(Lcom/google/common/flogger/MetadataKey;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 866
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0

    :cond_b
    if-lez p2, :cond_1c

    const/4 p3, 0x1

    if-le p2, p3, :cond_17

    .line 873
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 875
    :cond_17
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0

    .line 869
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " count must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs logImpl(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 738
    iput-object p2, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 742
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 743
    aget-object v1, p2, v0

    instance-of v2, v1, Lcom/google/common/flogger/LazyArg;

    if-eqz v2, :cond_14

    .line 744
    check-cast v1, Lcom/google/common/flogger/LazyArg;

    invoke-interface {v1}, Lcom/google/common/flogger/LazyArg;->evaluate()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 751
    :cond_17
    sget-object p2, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    if-eq p1, p2, :cond_26

    .line 752
    new-instance p2, Lcom/google/common/flogger/backend/TemplateContext;

    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getMessageParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/common/flogger/backend/TemplateContext;-><init>(Lcom/google/common/flogger/parser/MessageParser;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    .line 756
    :cond_26
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getInjectedTags()Lcom/google/common/flogger/context/Tags;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_45

    .line 758
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object p2

    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->TAGS:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p2, v0}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/flogger/context/Tags;

    if-eqz p2, :cond_42

    .line 760
    invoke-virtual {p1, p2}, Lcom/google/common/flogger/context/Tags;->merge(Lcom/google/common/flogger/context/Tags;)Lcom/google/common/flogger/context/Tags;

    move-result-object p1

    .line 762
    :cond_42
    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 765
    :cond_45
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/flogger/AbstractLogger;->write(Lcom/google/common/flogger/backend/LogData;)V

    return-void
.end method

.method private shouldLog()Z
    .registers 6

    .line 672
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 677
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const-class v2, Lcom/google/common/flogger/LogContext;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object v0

    const-string v2, "logger backend must not return a null LogSite"

    .line 676
    invoke-static {v0, v2}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/LogSite;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    .line 681
    :cond_19
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    sget-object v2, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    if-eq v0, v2, :cond_30

    .line 684
    iget-object v2, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/google/common/flogger/LogContext$MutableMetadata;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 685
    iget-object v2, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-static {v0, v2}, Lcom/google/common/flogger/LogContext;->specializeLogSiteKeyFromMetadata(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 688
    :cond_31
    :goto_31
    invoke-virtual {p0, v0}, Lcom/google/common/flogger/LogContext;->postProcess(Lcom/google/common/flogger/LogSiteKey;)Z

    move-result v2

    .line 689
    iget-object v3, p0, Lcom/google/common/flogger/LogContext;->rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

    if-eqz v3, :cond_57

    .line 691
    iget-object v4, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-static {v3, v0, v4}, Lcom/google/common/flogger/RateLimitStatus;->checkStatus(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)I

    move-result v0

    if-eqz v2, :cond_50

    if-lez v0, :cond_50

    .line 692
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz p0, :cond_50

    .line 693
    sget-object v3, Lcom/google/common/flogger/LogContext$Key;->SKIPPED_LOG_COUNT:Lcom/google/common/flogger/MetadataKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/flogger/LogContext$MutableMetadata;->addValue(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_50
    if-ltz v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    and-int p0, v2, v1

    return p0

    :cond_57
    return v2
.end method

.method static specializeLogSiteKeyFromMetadata(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/LogSiteKey;
    .registers 6

    .line 717
    const-string v0, "logSiteKey"

    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2e

    .line 719
    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p1, v1}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/flogger/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 720
    invoke-virtual {p1, v1}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 722
    instance-of v3, v2, Lcom/google/common/flogger/LoggingScope;

    if-eqz v3, :cond_27

    .line 723
    check-cast v2, Lcom/google/common/flogger/LoggingScope;

    invoke-virtual {v2, p0}, Lcom/google/common/flogger/LoggingScope;->specialize(Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object p0

    goto :goto_2b

    .line 725
    :cond_27
    invoke-static {p0, v2}, Lcom/google/common/flogger/SpecializedLogSiteKey;->of(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object p0

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2e
    return-object p0
.end method


# virtual methods
.method protected final addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-nez v0, :cond_b

    .line 489
    new-instance v0, Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-direct {v0}, Lcom/google/common/flogger/LogContext$MutableMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 491
    :cond_b
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext$MutableMetadata;->addValue(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract api()Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation
.end method

.method public final atMostEvery(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TAPI;"
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 882
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0

    :cond_b
    if-ltz p1, :cond_1d

    if-lez p1, :cond_18

    .line 890
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;

    invoke-static {p1, p2}, Lcom/google/common/flogger/DurationRateLimiter;->newRateLimitPeriod(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/DurationRateLimiter$RateLimitPeriod;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 892
    :cond_18
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0

    .line 885
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rate limit period cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final every(I)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 855
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    const-string v1, "rate limit"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/flogger/LogContext;->everyImpl(Lcom/google/common/flogger/MetadataKey;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final getArguments()[Ljava/lang/Object;
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot get arguments unless a template context exists"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    .line 443
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    if-eqz p0, :cond_11

    return-object p0

    .line 444
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get arguments before calling log()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLevel()Ljava/util/logging/Level;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    return-object p0
.end method

.method public final getLiteralArgument()Ljava/lang/Object;
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v2, "cannot get literal argument if a template context exists"

    invoke-static {v0, v2}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    if-eqz p0, :cond_14

    .line 455
    aget-object p0, p0, v1

    return-object p0

    .line 453
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get literal argument before calling log()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLogSite()Lcom/google/common/flogger/LogSite;
    .registers 2

    .line 429
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    if-eqz p0, :cond_5

    return-object p0

    .line 430
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot request log site information prior to postProcess()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract getLogger()Lcom/google/common/flogger/AbstractLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LOGGER;"
        }
    .end annotation
.end method

.method public final getLoggerName()Ljava/lang/String;
    .registers 1

    .line 424
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/flogger/AbstractLogger;->getBackend()Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/LoggerBackend;->getLoggerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getMessageParser()Lcom/google/common/flogger/parser/MessageParser;
.end method

.method public final getMetadata()Lcom/google/common/flogger/backend/Metadata;
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public final getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    return-object p0
.end method

.method public final getTimestampMicros()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestampNanos()J
    .registers 3

    .line 419
    iget-wide v0, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    return-wide v0
.end method

.method public final isEnabled()Z
    .registers 2

    .line 801
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/AbstractLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final log()V
    .registers 3

    .line 903
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 904
    sget-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;)V
    .registers 3

    .line 910
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 911
    sget-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public final log(Ljava/lang/String;B)V
    .registers 4

    .line 1083
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1084
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;BB)V
    .registers 5

    .line 1349
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1350
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BC)V
    .registers 5

    .line 1293
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1294
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BD)V
    .registers 6

    .line 1629
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1630
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BF)V
    .registers 5

    .line 1573
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1574
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BI)V
    .registers 5

    .line 1461
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1462
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BJ)V
    .registers 6

    .line 1517
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1518
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BLjava/lang/Object;)V
    .registers 5

    .line 1181
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1182
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;BS)V
    .registers 5

    .line 1405
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1406
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;BZ)V
    .registers 5

    .line 1237
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1238
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;C)V
    .registers 4

    .line 1076
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1077
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;CB)V
    .registers 5

    .line 1342
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1343
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CC)V
    .registers 5

    .line 1286
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1287
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CD)V
    .registers 6

    .line 1622
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1623
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CF)V
    .registers 5

    .line 1566
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1567
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CI)V
    .registers 5

    .line 1454
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1455
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CJ)V
    .registers 6

    .line 1510
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1511
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CLjava/lang/Object;)V
    .registers 5

    .line 1174
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1175
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;CS)V
    .registers 5

    .line 1398
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1399
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;CZ)V
    .registers 5

    .line 1230
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1231
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DB)V
    .registers 6

    .line 1384
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1385
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DC)V
    .registers 6

    .line 1328
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1329
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DD)V
    .registers 7

    .line 1664
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1665
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DF)V
    .registers 6

    .line 1608
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1609
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DI)V
    .registers 6

    .line 1496
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1497
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DJ)V
    .registers 7

    .line 1552
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1553
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DLjava/lang/Object;)V
    .registers 6

    .line 1216
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1217
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;DS)V
    .registers 6

    .line 1440
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1441
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;DZ)V
    .registers 6

    .line 1272
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1273
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FB)V
    .registers 5

    .line 1377
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1378
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FC)V
    .registers 5

    .line 1321
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1322
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FD)V
    .registers 6

    .line 1657
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1658
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FF)V
    .registers 5

    .line 1601
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1602
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FI)V
    .registers 5

    .line 1489
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1490
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FJ)V
    .registers 6

    .line 1545
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1546
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FLjava/lang/Object;)V
    .registers 5

    .line 1209
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1210
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;FS)V
    .registers 5

    .line 1433
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1434
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;FZ)V
    .registers 5

    .line 1265
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1266
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;I)V
    .registers 4

    .line 1097
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1098
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;IB)V
    .registers 5

    .line 1363
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1364
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;IC)V
    .registers 5

    .line 1307
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ID)V
    .registers 6

    .line 1643
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1644
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;IF)V
    .registers 5

    .line 1587
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1588
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;II)V
    .registers 5

    .line 1475
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;IJ)V
    .registers 6

    .line 1531
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1532
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 1195
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1196
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;IS)V
    .registers 5

    .line 1419
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;IZ)V
    .registers 5

    .line 1251
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;J)V
    .registers 5

    .line 1104
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1105
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;JB)V
    .registers 6

    .line 1370
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1371
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JC)V
    .registers 6

    .line 1314
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1315
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JD)V
    .registers 7

    .line 1650
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1651
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JF)V
    .registers 6

    .line 1594
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1595
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JI)V
    .registers 6

    .line 1482
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1483
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JJ)V
    .registers 7

    .line 1538
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1539
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JLjava/lang/Object;)V
    .registers 6

    .line 1202
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1203
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;JS)V
    .registers 6

    .line 1426
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1427
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;JZ)V
    .registers 6

    .line 1258
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1259
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 917
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 918
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;B)V
    .registers 5

    .line 1125
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1126
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;C)V
    .registers 5

    .line 1118
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1119
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;D)V
    .registers 6

    .line 1160
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1161
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;F)V
    .registers 5

    .line 1153
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1154
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1139
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 6

    .line 1146
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1147
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 924
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 925
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 932
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 933
    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 944
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 945
    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 957
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 958
    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 971
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 972
    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 986
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 987
    filled-new-array/range {p2 .. p8}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 1002
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1003
    filled-new-array/range {p2 .. p9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    .line 1019
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1020
    filled-new-array/range {p2 .. p10}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 1037
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1038
    filled-new-array/range {p2 .. p11}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final varargs log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 16

    .line 1056
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1058
    array-length v0, p12

    const/16 v1, 0xa

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1059
    aput-object p2, v0, v2

    const/4 p2, 0x1

    .line 1060
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 1061
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 1062
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 1063
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 1064
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 1065
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 1066
    aput-object p9, v0, p2

    const/16 p2, 0x8

    .line 1067
    aput-object p10, v0, p2

    const/16 p2, 0x9

    .line 1068
    aput-object p11, v0, p2

    .line 1069
    array-length p2, p12

    invoke-static {p12, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1070
    invoke-direct {p0, p1, v0}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;S)V
    .registers 5

    .line 1132
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1133
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    .line 1111
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1112
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;S)V
    .registers 4

    .line 1090
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1091
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;SB)V
    .registers 5

    .line 1356
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1357
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SC)V
    .registers 5

    .line 1300
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1301
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SD)V
    .registers 6

    .line 1636
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1637
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SF)V
    .registers 5

    .line 1580
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1581
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SI)V
    .registers 5

    .line 1468
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1469
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SJ)V
    .registers 6

    .line 1524
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1525
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SLjava/lang/Object;)V
    .registers 5

    .line 1188
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1189
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;SS)V
    .registers 5

    .line 1412
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1413
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;SZ)V
    .registers 5

    .line 1244
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1245
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZB)V
    .registers 5

    .line 1335
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1336
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZC)V
    .registers 5

    .line 1279
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1280
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZD)V
    .registers 6

    .line 1615
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1616
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZF)V
    .registers 5

    .line 1559
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1560
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZI)V
    .registers 5

    .line 1447
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1448
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZJ)V
    .registers 6

    .line 1503
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1504
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 5

    .line 1167
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1168
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public final log(Ljava/lang/String;ZS)V
    .registers 5

    .line 1391
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1392
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final log(Ljava/lang/String;ZZ)V
    .registers 5

    .line 1223
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1224
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final logVarargs(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1671
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1673
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method protected abstract noOp()Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation
.end method

.method public final onAverageEvery(I)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 860
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SAMPLE_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    const-string v1, "sampling"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/flogger/LogContext;->everyImpl(Lcom/google/common/flogger/MetadataKey;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public per(Lcom/google/common/flogger/LoggingScopeProvider;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LoggingScopeProvider;",
            ")TAPI;"
        }
    .end annotation

    .line 836
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-interface {p1}, Lcom/google/common/flogger/LoggingScopeProvider;->getCurrentScope()Lcom/google/common/flogger/LoggingScope;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final per(Ljava/lang/Enum;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)TAPI;"
        }
    .end annotation

    .line 831
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public per(Ljava/lang/Object;Lcom/google/common/flogger/LogPerBucketingStrategy;)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "-TT;>;)TAPI;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 826
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p2, p1}, Lcom/google/common/flogger/LogPerBucketingStrategy;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method protected postProcess(Lcom/google/common/flogger/LogSiteKey;)Z
    .registers 8

    .line 588
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_56

    if-eqz p1, :cond_29

    .line 594
    iget-wide v2, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    invoke-static {v0, p1, v2, v3}, Lcom/google/common/flogger/DurationRateLimiter;->check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;J)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object v0

    .line 595
    iget-object v2, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-static {v2, p1}, Lcom/google/common/flogger/CountingRateLimiter;->check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/flogger/RateLimitStatus;->combine(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object v0

    .line 596
    iget-object v2, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-static {v2, p1}, Lcom/google/common/flogger/SamplingRateLimiter;->check(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/flogger/RateLimitStatus;->combine(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p1

    .line 597
    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

    .line 601
    sget-object v0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    if-ne p1, v0, :cond_29

    const/4 p0, 0x0

    return p0

    .line 607
    :cond_29
    iget-object p1, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/StackSize;

    if-eqz p1, :cond_56

    .line 610
    invoke-virtual {p0, v0}, Lcom/google/common/flogger/LogContext;->removeMetadata(Lcom/google/common/flogger/MetadataKey;)V

    .line 623
    new-instance v0, Lcom/google/common/flogger/LogSiteStackTrace;

    .line 625
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v2

    sget-object v3, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v2, v3}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v4, Lcom/google/common/flogger/LogContext;

    .line 627
    invoke-virtual {p1}, Lcom/google/common/flogger/StackSize;->getMaxDepth()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/common/flogger/util/CallerFinder;->getStackForCallerOf(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {v0, v2, p1, v4}, Lcom/google/common/flogger/LogSiteStackTrace;-><init>(Ljava/lang/Throwable;Lcom/google/common/flogger/StackSize;[Ljava/lang/StackTraceElement;)V

    .line 629
    invoke-virtual {p0, v3, v0}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_56
    return v1
.end method

.method protected final removeMetadata(Lcom/google/common/flogger/MetadataKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)V"
        }
    .end annotation

    .line 501
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz p0, :cond_7

    .line 502
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->removeAllValues(Lcom/google/common/flogger/MetadataKey;)V

    :cond_7
    return-void
.end method

.method protected final updateRateLimiterStatus(Lcom/google/common/flogger/RateLimitStatus;)Z
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

    invoke-static {v0, p1}, Lcom/google/common/flogger/RateLimitStatus;->combine(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)Lcom/google/common/flogger/RateLimitStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->rateLimitStatus:Lcom/google/common/flogger/RateLimitStatus;

    .line 659
    sget-object p0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final wasForced()Z
    .registers 3

    .line 461
    iget-object p0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz p0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/common/flogger/LogContext$Key;->WAS_FORCED:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Boolean;",
            ">;)TAPI;"
        }
    .end annotation

    .line 820
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)TAPI;"
        }
    .end annotation

    .line 811
    const-string v0, "metadata key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 815
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TAPI;"
        }
    .end annotation

    .line 841
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LogSite;",
            ")TAPI;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 777
    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    .line 779
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final withInjectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 790
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/LogSite;->injectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LogSite;

    move-result-object p1

    .line 789
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/LogContext;->withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/StackSize;",
            ")TAPI;"
        }
    .end annotation

    .line 847
    const-string v0, "stack size"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/flogger/StackSize;->NONE:Lcom/google/common/flogger/StackSize;

    if-eq v0, v1, :cond_f

    .line 848
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 850
    :cond_f
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method
