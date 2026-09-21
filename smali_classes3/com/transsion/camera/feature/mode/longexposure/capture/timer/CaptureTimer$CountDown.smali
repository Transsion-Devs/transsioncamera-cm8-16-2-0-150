.class Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V
    .registers 4

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public updateTimer()V
    .registers 5

    .line 136
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mTotalDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    sub-long/2addr v0, v2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountDown;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    goto :goto_10

    :cond_e
    const-wide/16 v0, -0x1

    :goto_10
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$mnotifyTimeChanged(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V

    return-void
.end method
