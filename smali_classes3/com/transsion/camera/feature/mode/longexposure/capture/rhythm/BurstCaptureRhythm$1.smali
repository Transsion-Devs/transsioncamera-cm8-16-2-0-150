.class Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->capturing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 30
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyCaptureReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->notifyCaptureReady()V

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->-$$Nest$fgetmRunnable(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void
.end method
