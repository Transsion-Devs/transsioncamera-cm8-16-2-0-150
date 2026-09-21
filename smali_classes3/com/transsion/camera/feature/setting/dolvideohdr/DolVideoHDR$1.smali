.class Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 1

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->access$000(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->access$100(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
