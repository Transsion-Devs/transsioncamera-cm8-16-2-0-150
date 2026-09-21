.class Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/VlogMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateThumbnail(Landroid/net/Uri;)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->-$$Nest$fgetmVlogInfo(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->getVlogPath()Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$600(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 p1, 0x100

    .line 399
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$700(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 6

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$000(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$100(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$200(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$300(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_39
    if-nez p1, :cond_48

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$400(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string/jumbo p1, "video save failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 379
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 383
    :try_start_56
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->updateThumbnail(Landroid/net/Uri;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    :goto_5e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogMode$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/VlogMode;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    if-eqz v0, :cond_65

    return-void

    .line 392
    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogMode;->access$500(Lcom/transsion/camera/feature/mode/vlog/VlogMode;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->shareVideo(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
