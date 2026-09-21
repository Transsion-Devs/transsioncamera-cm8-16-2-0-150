.class Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->-$$Nest$fgetTAG(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->access$000(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_shutter_sound_optional"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->access$100(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->access$200(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_shutter_sound_update"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    .line 210
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->access$300(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method
