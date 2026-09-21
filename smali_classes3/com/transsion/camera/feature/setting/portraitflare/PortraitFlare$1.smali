.class Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;->this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;->this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;->access$100(Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;->this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;->this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;->access$000(Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$1;->this$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
