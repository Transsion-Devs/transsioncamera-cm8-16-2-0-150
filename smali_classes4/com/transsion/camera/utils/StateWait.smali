.class public Lcom/transsion/camera/utils/StateWait;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mWaitFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    return-void
.end method


# virtual methods
.method public notifyState()V
    .registers 3

    .line 32
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_1a

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_7
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 38
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_14

    throw p0

    :cond_1a
    return-void
.end method

.method public resetState()V
    .registers 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    return-void
.end method

.method public waitState()V
    .registers 3

    .line 12
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_7
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_13

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 17
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw p0

    :cond_17
    return-void
.end method

.method public waitState(J)V
    .registers 5

    .line 22
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_17

    .line 23
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_7
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_13

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 27
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw p0

    :cond_17
    return-void
.end method
