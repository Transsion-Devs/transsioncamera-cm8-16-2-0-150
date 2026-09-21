.class Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountUp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    .line 118
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public updateTimer()V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$CountUp;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer$BaseTimer;->mElapseTime:J

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;->-$$Nest$mnotifyTimeChanged(Lcom/transsion/camera/feature/mode/longexposure/capture/timer/CaptureTimer;J)V

    return-void
.end method
