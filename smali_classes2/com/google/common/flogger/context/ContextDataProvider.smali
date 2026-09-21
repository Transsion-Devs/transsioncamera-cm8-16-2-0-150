.class public abstract Lcom/google/common/flogger/context/ContextDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/context/ContextDataProvider;
    .registers 1

    .line 57
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getNoOpProvider()Lcom/google/common/flogger/context/ContextDataProvider;
    .registers 1

    .line 68
    invoke-static {}, Lcom/google/common/flogger/context/NoOpContextDataProvider;->getNoOpInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
.end method

.method public getMetadata()Lcom/google/common/flogger/backend/Metadata;
    .registers 1

    .line 135
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public getScope(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/LoggingScope;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTags()Lcom/google/common/flogger/context/Tags;
    .registers 1

    .line 123
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->empty()Lcom/google/common/flogger/context/Tags;

    move-result-object p0

    return-object p0
.end method

.method public shouldForceLogging(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
