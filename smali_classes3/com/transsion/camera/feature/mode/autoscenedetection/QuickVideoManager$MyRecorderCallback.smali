.class Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;
.super Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRecorderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    .line 248
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method


# virtual methods
.method protected addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmStorageOperator(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    if-nez v0, :cond_12

    .line 303
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "addVideoSaveRequest mStorageOperator is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_12
    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager-IA;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method protected handleStopFailed()V
    .registers 5

    .line 288
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->handleStopFailed()V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 292
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 295
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xea

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 5

    .line 276
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->onMediaRecorderPrepareAbort()V

    .line 277
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onMediaRecorderPrepareAbort"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$mnotifyRecorderStop(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 282
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xea

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 3

    .line 253
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->onMediaRecorderPreparing()V

    .line 254
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onMediaRecorderPreparing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 3

    .line 260
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->onMediaRecorderStarted()V

    .line 261
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onMediaRecorderStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmQuickVideoUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fgetmQuickVideoUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateRecordingTimeUI()V

    :cond_1d
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 5

    .line 269
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 270
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaRecorderStopped, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$mnotifyRecorderStop(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V

    return-void
.end method
