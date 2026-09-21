.class Lcom/transsion/camera/feature/setting/macro/Macro$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/macro/Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/macro/Macro;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/macro/Macro;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->-$$Nest$fgetmIsWideOrMacroCamera(Lcom/transsion/camera/feature/setting/macro/Macro;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    invoke-virtual {v0, p0, v2}, Lcom/transsion/camera/feature/setting/macro/Macro;->refreshToUI(ZZ)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->refreshToUI(ZZ)V

    return-void
.end method
