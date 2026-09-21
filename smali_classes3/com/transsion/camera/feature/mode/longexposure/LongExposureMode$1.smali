.class Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCancel()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onCaptureCancel()V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->captureEnd()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onCaptureEnd()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->captureEnd()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->access$200(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->access$300(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_25
    return-void
.end method

.method public onCaptureFail()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onCaptureFail()V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->captureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onCaptureStart()V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->captureStart()V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->access$000(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->access$100(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_25
    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureUI(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->onCaptureStop()V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposurePreview(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposurePreview;->captureEnd()V

    return-void
.end method
