.class public abstract Lcom/obs/log/AbstractLog4jLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ILOG:Ljava/util/logging/Logger;


# instance fields
.field protected final logger:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/obs/log/AbstractLog4jLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accessRecord(Ljava/lang/Object;)V
    .registers 4

    .line 197
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1b

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->info:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 199
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 201
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public debug(Ljava/lang/CharSequence;)V
    .registers 4

    .line 131
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->debug:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 133
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 136
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .registers 4

    .line 142
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->debug:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 144
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 147
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->debug:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 155
    :try_start_8
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string p0, "debug"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 158
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public error(Ljava/lang/CharSequence;)V
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->error:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 100
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 103
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 4

    .line 109
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->error:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 111
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 114
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->error:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 122
    :try_start_8
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string p0, "error"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 125
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public info(Ljava/lang/CharSequence;)V
    .registers 4

    .line 32
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->info:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 34
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 37
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 4

    .line 43
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->info:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 45
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 48
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 54
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->info:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 56
    :try_start_8
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string p0, "info"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 59
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public trace(Ljava/lang/CharSequence;)V
    .registers 4

    .line 164
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->trace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 166
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 169
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 4

    .line 175
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->trace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 177
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 180
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 186
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->trace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 188
    :try_start_8
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string p0, "trace"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 191
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public warn(Ljava/lang/CharSequence;)V
    .registers 4

    .line 65
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->warn:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 67
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 70
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_20

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->warn:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 78
    :try_start_9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 81
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/obs/log/LoggerMethodHolder;->warn:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 89
    :try_start_8
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string p0, "warn"

    invoke-static {p1, p0}, Lcom/obs/services/internal/utils/AccessLoggerUtils;->appendLog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 92
    sget-object p1, Lcom/obs/log/AbstractLog4jLogger;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
