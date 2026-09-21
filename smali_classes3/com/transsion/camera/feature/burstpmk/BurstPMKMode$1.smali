.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnd()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->onCaptureEnd()V

    .line 121
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureEnd()V

    .line 124
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 127
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public onCaptureFailed()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->onCaptureFailed()V

    .line 104
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureFailed()V

    .line 107
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 110
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStart()V

    .line 76
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureStart()V

    .line 79
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_40
    return-void
.end method

.method public onCaptureStop()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKUI(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStop()V

    .line 90
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureStop()V

    .line 93
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_40
    return-void
.end method
