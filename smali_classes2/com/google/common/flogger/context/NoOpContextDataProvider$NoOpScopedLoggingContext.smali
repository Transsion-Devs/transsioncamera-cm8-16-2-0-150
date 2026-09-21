.class final Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;
.super Lcom/google/common/flogger/context/ScopedLoggingContext;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/NoOpContextDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpScopedLoggingContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;
    }
.end annotation


# instance fields
.field private final haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/NoOpContextDataProvider$1;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    return-void
.end method

.method private logWarningOnceOnly()V
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 52
    # getter for: Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;->logger:Lcom/google/common/flogger/FluentLogger;
    invoke-static {}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;->access$000()Lcom/google/common/flogger/FluentLogger;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/common/flogger/AbstractLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/FluentLogger$Api;

    sget-object v0, Lcom/google/common/flogger/StackSize;->SMALL:Lcom/google/common/flogger/StackSize;

    .line 54
    invoke-interface {p0, v0}, Lcom/google/common/flogger/LoggingApi;->withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "Scoped logging contexts are disabled; no context data provider was installed.\nTo enable scoped logging contexts in your application, see the site-specific Platform class used to configure logging behaviour.\nDefault Platform: com.google.common.flogger.backend.system.DefaultPlatform"

    .line 55
    invoke-interface {p0, v0}, Lcom/google/common/flogger/LoggingApi;->log(Ljava/lang/String;)V

    :cond_21
    return-void
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

    .line 89
    invoke-direct {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/google/common/flogger/context/ScopedLoggingContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    .line 84
    invoke-super {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext;->addTags(Lcom/google/common/flogger/context/Tags;)Z

    move-result p0

    return p0
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    .line 96
    invoke-super {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext;->applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method isNoOp()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 2

    .line 65
    new-instance v0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;-><init>(Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;)V

    return-object v0
.end method

.method public newContext(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object p0

    return-object p0
.end method
