.class public abstract Lcom/google/common/flogger/AbstractLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_RECURSION_DEPTH:I = 0x64


# instance fields
.field private final backend:Lcom/google/common/flogger/backend/LoggerBackend;


# direct methods
.method protected constructor <init>(Lcom/google/common/flogger/backend/LoggerBackend;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "backend"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/LoggerBackend;

    iput-object p1, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    return-void
.end method

.method private static formatTimestampIso8601(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;
    .registers 5

    .line 204
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTimestampNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 215
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleErrorRobustly(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;)V
    .registers 4

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/backend/LoggerBackend;->handleError(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;)V
    :try_end_5
    .catch Lcom/google/common/flogger/backend/LoggingException; {:try_start_0 .. :try_end_5} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/common/flogger/AbstractLogger;->reportError(Ljava/lang/String;Lcom/google/common/flogger/backend/LogData;)V

    .line 182
    :try_start_2a
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2f} :catch_2f

    :catch_2f
    return-void

    :catch_30
    move-exception p0

    .line 176
    throw p0
.end method

.method private static reportError(Ljava/lang/String;Lcom/google/common/flogger/backend/LogData;)V
    .registers 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/common/flogger/AbstractLogger;->formatTimestampIso8601(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": logging error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/common/flogger/backend/MessageUtils;->appendLogSite(Lcom/google/common/flogger/LogSite;Ljava/lang/StringBuilder;)Z

    .line 195
    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 198
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public abstract at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            ")TAPI;"
        }
    .end annotation
.end method

.method public final atConfig()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 94
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atFine()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 99
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atFiner()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 104
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atFinest()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 109
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atInfo()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 89
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atSevere()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 79
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final atWarning()Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 84
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method final getBackend()Lcom/google/common/flogger/backend/LoggerBackend;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    return-object p0
.end method

.method protected getName()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/LoggerBackend;->getLoggerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final isLoggable(Ljava/util/logging/Level;)Z
    .registers 2

    .line 134
    iget-object p0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/LoggerBackend;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method final write(Lcom/google/common/flogger/backend/LogData;)V
    .registers 5

    .line 156
    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    :try_start_5
    invoke-static {}, Lcom/google/common/flogger/util/RecursionDepth;->enterLogStatement()Lcom/google/common/flogger/util/RecursionDepth;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_9} :catch_22

    .line 160
    :try_start_9
    invoke-virtual {v0}, Lcom/google/common/flogger/util/RecursionDepth;->getValue()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_19

    .line 161
    iget-object v1, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    invoke-virtual {v1, p1}, Lcom/google/common/flogger/backend/LoggerBackend;->log(Lcom/google/common/flogger/backend/LogData;)V

    goto :goto_1e

    :catchall_17
    move-exception v1

    goto :goto_24

    .line 163
    :cond_19
    const-string v1, "unbounded recursion in log statement"

    invoke-static {v1, p1}, Lcom/google/common/flogger/AbstractLogger;->reportError(Ljava/lang/String;Lcom/google/common/flogger/backend/LogData;)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_17

    .line 165
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Lcom/google/common/flogger/util/RecursionDepth;->close()V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    goto :goto_2f

    :goto_24
    if-eqz v0, :cond_2e

    .line 159
    :try_start_26
    invoke-virtual {v0}, Lcom/google/common/flogger/util/RecursionDepth;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2f} :catch_22

    .line 166
    :goto_2f
    invoke-direct {p0, v0, p1}, Lcom/google/common/flogger/AbstractLogger;->handleErrorRobustly(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;)V

    return-void
.end method
