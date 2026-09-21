.class public abstract Lcom/google/common/flogger/backend/system/AbstractBackend;
.super Lcom/google/common/flogger/backend/LoggerBackend;
.source "SourceFile"


# static fields
.field private static volatile cannotUseForcingLogger:Z = false


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractBackend;-><init>(Ljava/util/logging/Logger;)V

    return-void
.end method

.method constructor <init>(Ljava/util/logging/Logger;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/google/common/flogger/backend/LoggerBackend;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private static publish(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .registers 6

    .line 153
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 154
    invoke-virtual {v3, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 156
    :cond_10
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 157
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 159
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractBackend;->publish(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method forceLoggingViaChildLogger(Ljava/util/logging/LogRecord;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/system/AbstractBackend;->getForcingLogger(Ljava/util/logging/Logger;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 176
    :try_start_6
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_f

    .line 195
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void

    :catch_f
    const/4 v0, 0x1

    .line 181
    sput-boolean v0, Lcom/google/common/flogger/backend/system/AbstractBackend;->cannotUseForcingLogger:Z

    .line 183
    const-string v0, ""

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Forcing log statements with Flogger has been partially disabled.\nThe Flogger library cannot modify logger log levels, which is necessary to force log statements. This is likely due to an installed SecurityManager.\nForced log statements will still be published directly to log handlers, but will not be visible to the \'log(LogRecord)\' method of Logger subclasses.\n"

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractBackend;->publish(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method getForcingLogger(Ljava/util/logging/Logger;)Ljava/util/logging/Logger;
    .registers 2

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".__forced__"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public final getLoggerName()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isLoggable(Ljava/util/logging/Level;)Z
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    return p0
.end method

.method public final log(Ljava/util/logging/LogRecord;Z)V
    .registers 4

    if-eqz p2, :cond_33

    .line 98
    iget-object p2, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_33

    .line 114
    :cond_f
    iget-object p2, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Ljava/util/logging/Logger;->getFilter()Ljava/util/logging/Filter;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 116
    invoke-interface {p2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    .line 118
    :cond_1a
    iget-object p2, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/util/logging/Logger;

    if-eq p2, v0, :cond_2d

    sget-boolean p2, Lcom/google/common/flogger/backend/system/AbstractBackend;->cannotUseForcingLogger:Z

    if-eqz p2, :cond_29

    goto :goto_2d

    .line 126
    :cond_29
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractBackend;->forceLoggingViaChildLogger(Ljava/util/logging/LogRecord;)V

    return-void

    .line 122
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractBackend;->publish(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V

    return-void

    .line 101
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractBackend;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method
