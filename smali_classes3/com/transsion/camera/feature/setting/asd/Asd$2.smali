.class Lcom/transsion/camera/feature/setting/asd/Asd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/Asd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/Asd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updatePreviewState(Z)V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 549
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$200(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updatePreviewState(Z)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 540
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
