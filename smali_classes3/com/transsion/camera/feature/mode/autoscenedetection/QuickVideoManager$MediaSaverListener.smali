.class Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Ljava/lang/String;)V
    .registers 3

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 6

    .line 321
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSaved uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2b
    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 329
    :try_start_37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->mFilePath:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_4b

    :catch_40
    move-exception v1

    .line 331
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onFileSaved createBitmapFromVideo exception"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 333
    :goto_4b
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 336
    :cond_5d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0xea

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
