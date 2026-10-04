.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFile:Ljava/lang/String;

.field final synthetic this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;)V
    .registers 3

    .line 1052
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->mFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 6

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_33
    if-eqz p1, :cond_ce

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1067
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 1069
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 1070
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$4900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->sendNotification(Landroid/content/Context;)V

    .line 1072
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_b3

    const/16 p1, 0x80

    .line 1074
    :try_start_81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->mFile:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v0

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1078
    :goto_93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b3

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v1

    const/16 v2, 0x48

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)V

    .line 1082
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 1083
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->-$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)V

    .line 1086
    :cond_ce
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/16 v0, 0x3b

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V
    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;I)V

    .line 1087
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
