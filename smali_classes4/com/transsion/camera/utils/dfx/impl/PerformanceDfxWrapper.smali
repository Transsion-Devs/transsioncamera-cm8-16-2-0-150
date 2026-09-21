.class public Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;
.super Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;
.source "SourceFile"


# instance fields
.field private mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mIsCapturing:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;-><init>(Landroid/os/Handler;)V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    iput-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mIsCapturing:Z

    return-void
.end method


# virtual methods
.method public onActionCancel(I)V
    .registers 5

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_2a

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 52
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][Latency]onActionCancel There are still "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pictures is processing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    :cond_2a
    invoke-super {p0, p1}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionCancel(I)V

    return-void
.end method

.method public onActionEnd(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_35

    .line 36
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mIsCapturing:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mIsCapturing:Z

    .line 38
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionEnd(ILjava/lang/String;)V

    .line 40
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 41
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DFX][Latency]onActionEnd There are still "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pictures is processing."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_35
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionEnd(ILjava/lang/String;)V

    return-void
.end method

.method public onActionStart(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_3d

    .line 22
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mIsCapturing:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mIsCapturing:Z

    .line 24
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionStart(ILjava/lang/String;)V

    .line 26
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 27
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DFX][Latency]onActionStart There are still "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pictures is processing."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_3d
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionStart(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 59
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[DFX][Latency]onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;->mCaptureNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 61
    invoke-super {p0}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onDestroy()V

    return-void
.end method
