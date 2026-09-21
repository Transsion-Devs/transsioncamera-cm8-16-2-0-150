.class abstract Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;)V
    .registers 3

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final abortCapture()V
    .registers 3

    .line 305
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "abort Capture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCancelCapture()V

    return-void
.end method

.method public backPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public captureComplete()V
    .registers 1

    return-void
.end method

.method public captureFail()V
    .registers 1

    return-void
.end method

.method public captureStart()V
    .registers 1

    return-void
.end method

.method final entry()V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_7
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

    goto :goto_2a

    :catchall_26
    move-exception p0

    goto :goto_61

    :cond_28
    const-string v3, ""

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v1

    if-eq v1, p0, :cond_5f

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onLeave()V

    .line 248
    :cond_57
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;)V

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 251
    :cond_5f
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_26

    throw p0
.end method

.method protected onEntry()V
    .registers 1

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public pictureTaken()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected final reConfigSession()V
    .registers 3

    .line 310
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "reConfig session"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerReConfigSession()V

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shutterDown()V
    .registers 1

    return-void
.end method

.method public stopCapture()V
    .registers 1

    return-void
.end method

.method protected final triggerCapture()V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmTriggerProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 299
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerCapture triggerProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCompleteProgress: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCompleteProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->triggerCapture()V

    return-void
.end method
