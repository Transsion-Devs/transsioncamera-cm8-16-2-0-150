.class public Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mPlayedDuration:I

.field private mStartPlayTime:J

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    .line 48
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    :cond_e
    return-void
.end method

.method public getPlayedDuration()I
    .registers 5

    .line 31
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    if-ltz v2, :cond_15

    .line 36
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    .line 39
    :cond_15
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    .line 42
    :cond_17
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    return p0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    return-void
.end method

.method public start()V
    .registers 3

    .line 14
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    :cond_e
    return-void
.end method

.method public stop()V
    .registers 5

    .line 21
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mState:I

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mStartPlayTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz v0, :cond_17

    .line 25
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->mPlayedDuration:I

    :cond_17
    return-void
.end method
