.class Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 282
    invoke-static {}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$fputmPreviewStarted(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;Z)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->access$200(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 273
    invoke-static {}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$fputmPreviewStarted(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;Z)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->-$$Nest$fputmAlgoScene(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->access$000(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_super_night"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "key_video_super_night_none"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->access$100(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
