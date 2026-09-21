.class Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->-$$Nest$fputmPreviewStopped(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;Z)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->access$000(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->-$$Nest$fputmPreviewStopped(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;Z)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->-$$Nest$fgetmFrameResultCallback(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;)Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS$1;->this$0:Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;->-$$Nest$fputmCameraProxy(Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_1d
    return-void
.end method
