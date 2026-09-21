.class Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;Z)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$500(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$600(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$700(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "preview_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "preview_stopped"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;Z)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$200(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$300(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting$1;->this$0:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->access$400(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "preview_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "preview_started"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method
