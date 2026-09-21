.class Lcom/transsion/camera/feature/setting/fusion/Fusion$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fusion/Fusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fusion/Fusion;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->updatePreviewState(Z)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$100(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->updatePreviewState(Z)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$000(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
