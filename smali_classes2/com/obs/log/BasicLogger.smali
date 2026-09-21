.class public Lcom/obs/log/BasicLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/log/ILogger;


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public accessRecord(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 175
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public debug(Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 122
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->DEBUG:Ljava/util/logging/Level;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 123
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 130
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->DEBUG:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 131
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 138
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->DEBUG:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public error(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 93
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 94
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 101
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 102
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 109
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->ERROR:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public info(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 35
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 43
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 51
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->DEBUG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->ERROR:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled()Z
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->TRACE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->WARN:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public trace(Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 151
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->TRACE:Ljava/util/logging/Level;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 152
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 159
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->TRACE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 160
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 167
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->TRACE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public warn(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 64
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 65
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 72
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 73
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 80
    iget-object p0, p0, Lcom/obs/log/BasicLogger;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/obs/services/LogConfigurator;->WARN:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method
