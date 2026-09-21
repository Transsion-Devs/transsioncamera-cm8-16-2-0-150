.class Lcom/transsion/camera/feature/setting/zoom/Zoom$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSatReplaceWide(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmIsAsdMode(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 202
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->updatePreviewState(Z)V

    .line 204
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$100(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSatReplaceWide(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmIsAsdMode(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 194
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->updatePreviewState(Z)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
