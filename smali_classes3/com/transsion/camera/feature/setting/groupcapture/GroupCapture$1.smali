.class Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;I)V

    .line 310
    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "onPreviewStarted"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmIsFrameResultCallbackEnabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmIsTemporaryDisabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->access$100(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;I)V

    .line 301
    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "onPreviewStopped"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fputmIsFrameResultCallbackEnabled(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Z)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->access$000(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$1;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$fgetmFaceChecker(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->reset()V

    return-void
.end method
