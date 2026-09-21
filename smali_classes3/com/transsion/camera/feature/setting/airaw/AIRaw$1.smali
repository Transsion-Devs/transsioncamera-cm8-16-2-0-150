.class Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/airaw/AIRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->updatePreviewState(Z)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->access$100(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->access$200(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->updatePreviewState(Z)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->access$000(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
