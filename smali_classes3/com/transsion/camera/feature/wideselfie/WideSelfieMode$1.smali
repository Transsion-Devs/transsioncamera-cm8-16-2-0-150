.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnd()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onCaptureEnd()V

    .line 129
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->onCaptureEnd()V

    .line 132
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 136
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public onCaptureFailed()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onCaptureFailed()V

    .line 111
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->onCaptureFailed()V

    .line 114
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 118
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_53
    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStart()V

    .line 82
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->onCaptureStart()V

    .line 85
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_40
    return-void
.end method

.method public onCaptureStop()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStop()V

    .line 96
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStop()V

    .line 100
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_40
    return-void
.end method
