.class Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuStereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 3

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->access$200(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->-$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Z)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->access$100(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method
