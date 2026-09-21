.class Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuMonomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->access$000(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$fgetmCameraDualLensCallback(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$fputmCameraProxy(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 181
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$fputmWarningType(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;I)V

    return-void
.end method
