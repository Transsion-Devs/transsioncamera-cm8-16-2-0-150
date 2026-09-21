.class Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->access$000(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$1;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshAsdStateImmediately(I)V

    :cond_14
    return-void
.end method
