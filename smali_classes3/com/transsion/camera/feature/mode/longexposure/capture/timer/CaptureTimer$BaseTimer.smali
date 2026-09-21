.class abstract Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseTimer"
.end annotation


# instance fields
.field protected mElapseTime:J

.field protected final mTotalDuration:J


# direct methods
.method constructor <init>(J)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 96
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    .line 99
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mTotalDuration:J

    return-void
.end method


# virtual methods
.method public final onTimeChanged()V
    .registers 5

    .line 107
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->updateTimer()V

    return-void
.end method

.method public final timeEnded()Z
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mTotalDuration:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateTimer()V
.end method
