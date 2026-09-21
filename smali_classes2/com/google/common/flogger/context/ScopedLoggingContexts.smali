.class public final Lcom/google/common/flogger/context/ScopedLoggingContexts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/context/ScopedLoggingContexts;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/flogger/context/ScopedLoggingContexts;->warnOnFailure(Z)Z

    move-result p0

    return p0
.end method

.method public static addTags(Lcom/google/common/flogger/context/Tags;)Z
    .registers 2

    .line 110
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->addTags(Lcom/google/common/flogger/context/Tags;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/flogger/context/ScopedLoggingContexts;->warnOnFailure(Z)Z

    move-result p0

    return p0
.end method

.method public static applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .registers 2

    .line 168
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/flogger/context/ScopedLoggingContexts;->warnOnFailure(Z)Z

    move-result p0

    return p0
.end method

.method public static newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 1

    .line 59
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newContext(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 2

    .line 78
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->newContext(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static warnOnFailure(Z)Z
    .registers 4

    if-nez p0, :cond_2a

    .line 35
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->isNoOp()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 36
    sget-object v0, Lcom/google/common/flogger/context/ScopedLoggingContexts;->logger:Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v0}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2}, Lcom/google/common/flogger/LoggingApi;->atMostEvery(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    sget-object v1, Lcom/google/common/flogger/StackSize;->SMALL:Lcom/google/common/flogger/StackSize;

    invoke-interface {v0, v1}, Lcom/google/common/flogger/LoggingApi;->withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "***** An attempt to add metadata to the current logging context failed. *****\nCalls to static methods in \'ScopedLoggingContexts\' may fail when there is no existing context available.\nTo ensure metadata is available to log statements, create a new context via \'ScopedLoggingContexts.newContext()\' and add metadata to it explicitly.\n"

    invoke-interface {v0, v1}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V

    :cond_2a
    return p0
.end method
