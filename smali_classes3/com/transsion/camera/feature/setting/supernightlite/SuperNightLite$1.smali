.class Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->access$000(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->access$100(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$1;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method
