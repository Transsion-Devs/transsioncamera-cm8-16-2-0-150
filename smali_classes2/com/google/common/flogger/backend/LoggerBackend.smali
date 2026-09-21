.class public abstract Lcom/google/common/flogger/backend/LoggerBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLoggerName()Ljava/lang/String;
.end method

.method public abstract handleError(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;)V
.end method

.method public abstract isLoggable(Ljava/util/logging/Level;)Z
.end method

.method public abstract log(Lcom/google/common/flogger/backend/LogData;)V
.end method
