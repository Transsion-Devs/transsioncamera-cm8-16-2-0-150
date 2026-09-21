.class public Lcom/cdv/io/NvSyncEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_manualReset:Z

.field private volatile m_signaled:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    .line 25
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 29
    iput-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    return-void
.end method

.method private waitEventWithTimeout(J)Z
    .registers 10

    const/4 v0, 0x0

    .line 82
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_36

    .line 83
    :try_start_2
    iget-boolean v1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 84
    iget-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez p1, :cond_10

    .line 85
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_34

    .line 86
    :cond_10
    :goto_10
    monitor-exit p0

    return v2

    .line 90
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 91
    :goto_16
    iget-boolean v1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez v1, :cond_2c

    .line 92
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_29

    .line 97
    monitor-exit p0

    return v0

    :cond_29
    sub-long/2addr p1, v3

    move-wide v3, v5

    goto :goto_16

    .line 103
    :cond_2c
    iget-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez p1, :cond_32

    .line 104
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 105
    :cond_32
    monitor-exit p0

    return v2

    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_e

    :try_start_35
    throw p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    .line 109
    const-string p1, "SyncEvent"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public resetEvent()V
    .registers 2

    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    :try_start_2
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 46
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setEvent()V
    .registers 2

    .line 34
    monitor-enter p0

    .line 35
    :try_start_1
    iget-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    .line 39
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :goto_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_c

    throw v0
.end method

.method public waitEvent(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 55
    monitor-enter p0

    .line 56
    :try_start_7
    iget-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p1

    :cond_e
    if-lez v0, :cond_15

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvSyncEvent;->waitEventWithTimeout(J)Z

    move-result p0

    return p0

    :cond_15
    const/4 p1, 0x0

    .line 63
    :try_start_16
    monitor-enter p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_17} :catch_2c

    .line 64
    :goto_17
    :try_start_17
    iget-boolean p2, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez p2, :cond_21

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_17

    :catchall_1f
    move-exception p2

    goto :goto_2a

    .line 67
    :cond_21
    iget-boolean p2, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez p2, :cond_27

    .line 68
    iput-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 69
    :cond_27
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_1f

    :try_start_2b
    throw p2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    .line 73
    const-string p2, "SyncEvent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method
