.class Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/VipStereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

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

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->access$200(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->-$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->access$100(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method
