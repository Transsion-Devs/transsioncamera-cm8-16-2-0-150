.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4

    .line 382
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] flush: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    invoke-interface {p0, v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 8

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmIsAdaptLowPlatform(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    if-nez v0, :cond_198

    .line 290
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNextReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_198

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 296
    const-string v0, "[TranMemoryFlow] available memory when onNextReady :"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmCaptureState(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture][CapturePerformance] onNextReady mCapturingNumber.get() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mShot2ShotLeftNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mFirstSteadyFrameCome = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsProcessingUriCreated\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmShot2shotMaxCacheNumber(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_95

    if-gtz v0, :cond_a1

    :cond_95
    if-nez v0, :cond_a3

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 302
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_a3

    :cond_a1
    move v1, v3

    goto :goto_a4

    :cond_a3
    move v1, v2

    .line 303
    :goto_a4
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v4, v4, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v4, :cond_128

    if-eqz v1, :cond_128

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 305
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "It\'s a project under 4G,force close shot 2 shot in monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_bc
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v1

    if-nez v1, :cond_128

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$msuperNightLiteOff(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinition108MInLowPlatform()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 310
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 312
    :cond_dd
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v4, 0x1f

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v4, "capture_state"

    const-string v5, "shot2shot_end"

    invoke-virtual {v1, v4, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result p1

    if-nez p1, :cond_128

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz v1, :cond_128

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmThumbNailType(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result p1

    if-ne p1, v3, :cond_128

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x97

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_128

    .line 320
    :cond_11b
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "onNextReady reset mIsTimeLongAlgoSceen for ProcessingUri not created"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iput-boolean v2, p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 327
    :cond_128
    :goto_128
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_198

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmShot2shotMaxNumberForEnableUI(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result p1

    if-gt v0, p1, :cond_198

    if-lez v0, :cond_198

    .line 328
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_146

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "It\'s a project under 4G,force close continuous in monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_146
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz v0, :cond_183

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_183

    .line 333
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p1

    if-lt p1, v3, :cond_183

    .line 334
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setOnNextReadyFlag(Z)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onNextReady] OfflineSessionCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , action_shot_2_shot_end_enable_ui discard"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_183
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    if-eqz v0, :cond_198

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_198

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x9c

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_198
    return-void
.end method

.method public onShutterDone()V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture][CapturePerformance] onShutterDone mCapturingNumber.get() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mShot2ShotLeftNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mFirstSteadyFrameCome = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsProcessingUriCreated\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v1, :cond_52

    goto/16 :goto_f9

    .line 353
    :cond_52
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 354
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "It\'s a project under 4G,force close shot 2 shot in monkey scenarios."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_62
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9d

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v3, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz v3, :cond_9d

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmThumbNailType(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-ne v1, v2, :cond_9d

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x97

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_9d

    .line 362
    :cond_8f
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v3, "onShutterDone reset mIsTimeLongAlgoSceen for ProcessingUri not created"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 367
    :cond_9d
    :goto_9d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmShot2shotMaxNumberForEnableUI(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-gt v0, v1, :cond_f9

    if-lez v0, :cond_f9

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBGOffLineEnable:Z

    if-eqz v1, :cond_e4

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result v0

    if-lt v0, v2, :cond_e4

    .line 369
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setOnNextReadyFlag(Z)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onShutterDone] OfflineSessionCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOfflineSessionCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , action_shot_2_shot_end_enable_ui discard"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_e4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    if-eqz v1, :cond_f9

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x9c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method public processPreview()V
    .registers 3

    .line 389
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] processPreview"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public saveHighQualityJpegDone()V
    .registers 4

    .line 396
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] saveHighQualityJpegDone supportPostAlgoDeferRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    .line 397
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDeferOnNextCapAfterJpeg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mDeferOnNextCapAfterJpeg:Z

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSupport200M()Z

    move-result v0

    if-nez v0, :cond_52

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "capture_state"

    const-string v1, "capture_end"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_52
    return-void
.end method
