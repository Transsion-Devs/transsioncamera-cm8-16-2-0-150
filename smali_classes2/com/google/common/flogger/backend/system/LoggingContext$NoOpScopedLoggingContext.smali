.class final Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;
.super Lcom/google/common/flogger/context/ScopedLoggingContext;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/system/LoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpScopedLoggingContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/system/LoggingContext$1;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;-><init>()V

    return-void
.end method


# virtual methods
.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 2

    .line 43
    new-instance v0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;-><init>(Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;)V

    return-object v0
.end method

.method public newContext(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object p0

    return-object p0
.end method
