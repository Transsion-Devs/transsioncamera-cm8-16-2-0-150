.class public abstract Lcom/obs/services/model/MonitorableProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ProgressListener;


# static fields
.field private static final ILOG:Lcom/obs/log/ILogger;


# instance fields
.field private runningTask:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/obs/services/model/MonitorableProgressListener;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/MonitorableProgressListener;->ILOG:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final finishOneTask()V
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final isRunning()Z
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final startOneTask()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final waitingFinish()Z
    .registers 3

    const-wide/16 v0, -0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/obs/services/model/MonitorableProgressListener;->waitingFinish(J)Z

    move-result p0

    return p0
.end method

.method public final waitingFinish(J)Z
    .registers 8

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    sget-object v2, Lcom/obs/services/model/MonitorableProgressListener;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this.runningTask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 84
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/obs/services/model/MonitorableProgressListener;->runningTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_61

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_5b

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_5b

    .line 86
    sget-object p1, Lcom/obs/services/model/MonitorableProgressListener;->ILOG:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadFileReqeust is not finish. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :cond_59
    const/4 p0, 0x0

    return p0

    :cond_5b
    const-wide/16 v2, 0x64

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_22

    :cond_61
    const/4 p0, 0x1

    return p0
.end method
