.class public Lcom/google/common/flogger/backend/system/DefaultPlatform;
.super Lcom/google/common/flogger/backend/Platform;
.source "SourceFile"


# static fields
.field private static final BACKEND_FACTORY:Ljava/lang/String; = "flogger.backend_factory"

.field private static final CLOCK:Ljava/lang/String; = "flogger.clock"

.field private static final CONTEXT_DATA_PROVIDER:Ljava/lang/String; = "flogger.logging_context"


# instance fields
.field private final backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

.field private final callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

.field private final clock:Lcom/google/common/flogger/backend/system/Clock;

.field private final context:Lcom/google/common/flogger/context/ContextDataProvider;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform;-><init>()V

    .line 97
    const-class v0, Lcom/google/common/flogger/backend/system/BackendFactory;

    const-string v1, "flogger.backend_factory"

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/system/DefaultPlatform;->loadService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/system/BackendFactory;

    if-eqz v0, :cond_10

    goto :goto_14

    .line 99
    :cond_10
    invoke-static {}, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;->getInstance()Lcom/google/common/flogger/backend/system/BackendFactory;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    .line 101
    const-class v0, Lcom/google/common/flogger/context/ContextDataProvider;

    const-string v1, "flogger.logging_context"

    .line 102
    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/system/DefaultPlatform;->loadService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/context/ContextDataProvider;

    if-eqz v0, :cond_23

    goto :goto_27

    .line 104
    :cond_23
    invoke-static {}, Lcom/google/common/flogger/context/ContextDataProvider;->getNoOpProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    :goto_27
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    .line 106
    const-class v0, Lcom/google/common/flogger/backend/system/Clock;

    const-string v1, "flogger.clock"

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/system/DefaultPlatform;->loadService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/system/Clock;

    if-eqz v0, :cond_36

    goto :goto_3a

    .line 107
    :cond_36
    invoke-static {}, Lcom/google/common/flogger/backend/system/SystemClock;->getInstance()Lcom/google/common/flogger/backend/system/SystemClock;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    .line 109
    invoke-static {}, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->getInstance()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/backend/system/BackendFactory;Lcom/google/common/flogger/context/ContextDataProvider;Lcom/google/common/flogger/backend/system/Clock;Lcom/google/common/flogger/backend/Platform$LogCallerFinder;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    .line 168
    iput-object p2, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    .line 169
    iput-object p3, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    .line 170
    iput-object p4, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method

.method private static loadService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .line 132
    invoke-static {p1, p0}, Lcom/google/common/flogger/util/StaticMethodCaller;->getInstanceFromSystemProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 138
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 143
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3c

    .line 151
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string p1, "Multiple implementations of service %s found on the classpath: %s%nEnsure only the service implementation you want to use is included on the classpath or else specify the service class at startup with the \'%s\' system property. The default implementation will be used instead.%n"

    invoke-virtual {v1, p1, p0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-object v2

    :cond_3c
    const/4 p0, 0x0

    .line 149
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_42
    return-object v2
.end method


# virtual methods
.method protected getBackendImpl(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/system/BackendFactory;->create(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object p0

    return-object p0
.end method

.method protected getCallerFinderImpl()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-object p0
.end method

.method protected getConfigInfoImpl()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBackendFactory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nContextDataProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nLogCallerFinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getContextDataProviderImpl()Lcom/google/common/flogger/context/ContextDataProvider;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    return-object p0
.end method

.method protected getCurrentTimeNanosImpl()J
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/Clock;->getCurrentTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
