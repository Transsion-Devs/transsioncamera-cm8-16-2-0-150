.class Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraFirstFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public getDataStoreValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onFirstSteadyFrame(Ljava/lang/String;)V
    .registers 4

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 522
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 525
    :try_start_1a
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstSteadyFrame, mModeChangeLock notifyAll"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeChangeLock(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 527
    monitor-exit p1

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_2e

    throw p0
.end method
