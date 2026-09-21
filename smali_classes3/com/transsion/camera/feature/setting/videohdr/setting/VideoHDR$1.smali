.class Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 91
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$mrequestChangeCommand(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 78
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "lily... onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmAlgoScene(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setFlashFired(Z)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmVideoHDRParameterConfigure(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->access$000(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->access$100(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_43
    return-void
.end method
