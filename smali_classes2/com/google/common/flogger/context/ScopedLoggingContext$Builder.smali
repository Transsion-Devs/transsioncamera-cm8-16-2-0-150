.class public abstract Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopedLoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private hasLogLevelMap:Z

.field private logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

.field private metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

.field private tags:Lcom/google/common/flogger/context/Tags;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    .line 136
    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

    .line 137
    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->hasLogLevelMap:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final callUnchecked(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 256
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "checked exception caught during context call"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_e
    move-exception p0

    .line 254
    throw p0
.end method

.method protected final getLogLevelMap()Lcom/google/common/flogger/context/LogLevelMap;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    return-object p0
.end method

.method protected final getMetadata()Lcom/google/common/flogger/context/ContextMetadata;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/common/flogger/context/ContextMetadata$Builder;->build()Lcom/google/common/flogger/context/ContextMetadata;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getTags()Lcom/google/common/flogger/context/Tags;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    return-object p0
.end method

.method public abstract install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
.end method

.method public final run(Ljava/lang/Runnable;)V
    .registers 2

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final withLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 5

    .line 176
    iget-boolean v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->hasLogLevelMap:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "log level map already set"

    invoke-static {v0, v2}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    .line 177
    iput-boolean v1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->hasLogLevelMap:Z

    .line 178
    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    return-object p0
.end method

.method public final withMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

    if-nez v0, :cond_d

    .line 164
    invoke-static {}, Lcom/google/common/flogger/context/ContextMetadata;->builder()Lcom/google/common/flogger/context/ContextMetadata$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

    .line 166
    :cond_d
    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ContextMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/flogger/context/ContextMetadata$Builder;->add(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ContextMetadata$Builder;

    return-object p0
.end method

.method public final withTags(Lcom/google/common/flogger/context/Tags;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "tags already set"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    .line 149
    const-string v0, "tags"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    return-object p0
.end method

.method public final wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 191
    new-instance v0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$1;-><init>(Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;-><init>(Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
