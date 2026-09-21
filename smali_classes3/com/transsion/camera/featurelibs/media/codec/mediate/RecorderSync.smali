.class public Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPauseStartTime:J

.field private volatile mPresentationTime:J

.field private mStartTime:J

.field private mTotalPausedDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecorderSync"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;-><init>()V

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    return-void
.end method


# virtual methods
.method public getPresentationTime()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    return-wide v0
.end method

.method public pause()V
    .registers 3

    .line 50
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->pause()V

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPauseStartTime:J

    return-void
.end method

.method public reset()V
    .registers 3

    .line 56
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPauseStartTime:J

    .line 58
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mTotalPausedDuration:J

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    return-void
.end method

.method public resume()V
    .registers 7

    .line 44
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->resume()V

    .line 45
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mTotalPausedDuration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPauseStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mTotalPausedDuration:J

    return-void
.end method

.method public start()V
    .registers 3

    .line 36
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->start()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPauseStartTime:J

    .line 38
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mTotalPausedDuration:J

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    return-void
.end method

.method public updatePresentationTime()V
    .registers 8

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    .line 64
    const-string v2, ", mPresentationTime: "

    if-eq v1, v0, :cond_32

    const/4 v1, 0x3

    if-eq v1, v0, :cond_32

    .line 65
    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePresentationTime invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stateDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 71
    iget-wide v3, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_5e

    const-wide/16 v2, 0x0

    .line 72
    iput-wide v2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    .line 73
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mStartTime:J

    .line 74
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePresentationTime first frame mStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_5e
    iget-wide v3, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    .line 77
    iget-wide v5, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mStartTime:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mTotalPausedDuration:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    .line 79
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePresentationTime frame duration: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;->mPresentationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
