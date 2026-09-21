.class Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->access$000(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->-$$Nest$fgetmIsSupportMode(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->access$100(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->access$200(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$2;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method
