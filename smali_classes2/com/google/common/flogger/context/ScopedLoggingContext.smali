.class public abstract Lcom/google/common/flogger/context/ScopedLoggingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V
    .registers 2

    .line 83
    invoke-static {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext;->closeAndMaybePropagateError(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V

    return-void
.end method

.method private static closeAndMaybePropagateError(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V
    .registers 3

    .line 440
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    if-nez p1, :cond_17

    .line 445
    instance-of p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    if-eqz p1, :cond_e

    .line 446
    check-cast p0, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    goto :goto_16

    .line 447
    :cond_e
    new-instance p1, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    const-string v0, "invalid logging context state"

    invoke-direct {p1, v0, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_16
    throw p0

    :cond_17
    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .registers 1

    .line 321
    invoke-static {}, Lcom/google/common/flogger/context/ContextDataProvider;->getInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ContextDataProvider;->getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Z
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

    .line 407
    const-string p0, "key"

    invoke-static {p1, p0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    const-string p0, "value"

    invoke-static {p2, p0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .registers 2

    .line 392
    const-string p0, "tags"

    invoke-static {p1, p0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .registers 2

    .line 428
    const-string p0, "log level map"

    invoke-static {p1, p0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method isNoOp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.end method

.method public abstract newContext(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.end method

.method public newScope()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object p0

    return-object p0
.end method
