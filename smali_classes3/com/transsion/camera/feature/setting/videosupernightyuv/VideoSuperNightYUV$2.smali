.class Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 291
    invoke-static {}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$fputmPreviewStarted(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;Z)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->access$200(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 282
    invoke-static {}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$fputmPreviewStarted(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;Z)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->-$$Nest$fputmAlgoScene(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->access$000(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_super_night_yuv"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "key_video_super_night_yuv_none"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->access$100(Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV$2;->this$0:Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videosupernightyuv/VideoSuperNightYUV;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
