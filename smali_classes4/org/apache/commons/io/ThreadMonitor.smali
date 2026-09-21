.class Lorg/apache/commons/io/ThreadMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final timeout:Ljava/time/Duration;


# direct methods
.method private constructor <init>(Ljava/lang/Thread;Ljava/time/Duration;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    .line 98
    iput-object p2, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    return-void
.end method

.method private static sleep(Ljava/time/Duration;)V
    .registers 7

    .line 128
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 132
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gtz p0, :cond_9

    return-void
.end method

.method static start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;
    .registers 3

    .line 69
    invoke-virtual {p1}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 72
    :cond_d
    new-instance v0, Lorg/apache/commons/io/ThreadMonitor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/ThreadMonitor;-><init>(Ljava/lang/Thread;Ljava/time/Duration;)V

    .line 73
    new-instance p0, Ljava/lang/Thread;

    const-class p1, Lorg/apache/commons/io/ThreadMonitor;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method static start(Ljava/time/Duration;)Ljava/lang/Thread;
    .registers 2

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/ThreadMonitor;->start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static stop(Ljava/lang/Thread;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 86
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    invoke-static {v0}, Lorg/apache/commons/io/ThreadMonitor;->sleep(Ljava/time/Duration;)V

    .line 111
    iget-object p0, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
