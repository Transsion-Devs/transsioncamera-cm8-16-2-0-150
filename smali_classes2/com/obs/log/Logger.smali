.class public Lcom/obs/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/log/ILogger;


# instance fields
.field private final delegate:Lcom/obs/log/ILogger;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    .line 22
    instance-of v1, p1, Ljava/util/logging/Logger;

    if-eqz v1, :cond_13

    .line 23
    new-instance v0, Lcom/obs/log/BasicLogger;

    check-cast p1, Ljava/util/logging/Logger;

    invoke-direct {v0, p1}, Lcom/obs/log/BasicLogger;-><init>(Ljava/util/logging/Logger;)V

    iput-object v0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    return-void

    :cond_13
    if-eqz v0, :cond_29

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.log4j.Logger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 25
    new-instance v0, Lcom/obs/log/Log4jLogger;

    invoke-direct {v0, p1}, Lcom/obs/log/Log4jLogger;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    return-void

    .line 27
    :cond_29
    new-instance v0, Lcom/obs/log/Log4j2Logger;

    invoke-direct {v0, p1}, Lcom/obs/log/Log4j2Logger;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    return-void
.end method


# virtual methods
.method public accessRecord(Ljava/lang/Object;)V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->accessRecord(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/CharSequence;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1, p2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/CharSequence;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 88
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1, p2}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/CharSequence;)V
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1, p2}, Lcom/obs/log/ILogger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result p0

    return p0
.end method

.method public isErrorEnabled()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled()Z
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isInfoEnabled()Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled()Z
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled()Z
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p0

    return p0
.end method

.method public trace(Ljava/lang/CharSequence;)V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 128
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1, p2}, Lcom/obs/log/ILogger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/CharSequence;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/obs/log/Logger;->delegate:Lcom/obs/log/ILogger;

    invoke-interface {p0, p1, p2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
