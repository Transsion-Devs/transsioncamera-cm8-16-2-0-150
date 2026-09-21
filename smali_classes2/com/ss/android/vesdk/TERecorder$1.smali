.class Lcom/ss/android/vesdk/TERecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/common/TECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 10

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback:: type: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->dispatchStateMsg(IIFLjava/lang/String;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorder;->access$000(Lcom/ss/android/vesdk/TERecorder;IIFLjava/lang/String;)V

    .line 280
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_RECORD_STOPPED:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_40

    .line 287
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$1$1;

    invoke-direct {v1, p0, p2}, Lcom/ss/android/vesdk/TERecorder$1$1;-><init>(Lcom/ss/android/vesdk/TERecorder$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    invoke-static {v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    goto/16 :goto_18d

    .line 302
    :cond_40
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_START_RECORD:I

    if-ne p1, v0, :cond_59

    .line 303
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mCountOfLastFragFrames:I
    invoke-static {v0, v3}, Lcom/ss/android/vesdk/TERecorder;->access$402(Lcom/ss/android/vesdk/TERecorder;I)I

    .line 304
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$1$2;

    invoke-direct {v1, p0, p2}, Lcom/ss/android/vesdk/TERecorder$1$2;-><init>(Lcom/ss/android/vesdk/TERecorder$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_18d

    .line 313
    :cond_59
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_PREPLAY_STOPPED:I

    if-ne p1, v0, :cond_68

    .line 314
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder;->mStopPrePlayCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz v0, :cond_18d

    .line 315
    invoke-interface {v0, p2}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    goto/16 :goto_18d

    :cond_68
    const/16 v0, 0x41b

    if-ne p1, v0, :cond_8d

    .line 318
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, v0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    if-eqz v1, :cond_18d

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object v0

    if-eqz v0, :cond_18d

    .line 319
    const-string v0, "TECamera-start"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, v0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/camera/TECamera;->start(Lcom/ss/android/vesdk/camera/ICameraPreview;)I

    .line 321
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    goto/16 :goto_18d

    :cond_8d
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_d3

    .line 324
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v1, :cond_18d

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    if-eqz v0, :cond_18d

    .line 326
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    :goto_a6
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mHasOpenCamera:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$800(Lcom/ss/android/vesdk/TERecorder;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 329
    :try_start_ae
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mOpenCameraCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$900(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_b7
    .catch Ljava/lang/InterruptedException; {:try_start_ae .. :try_end_b7} :catch_b8

    goto :goto_a6

    :catch_b8
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a6

    .line 334
    :cond_bd
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 335
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, v0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/camera/TECamera;->start(Lcom/ss/android/vesdk/camera/ICameraPreview;)I

    goto/16 :goto_18d

    .line 337
    :cond_d3
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_INIT:I

    if-ne p1, v0, :cond_10e

    .line 338
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v1, :cond_18d

    .line 339
    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TERecorder;->access$1102(Lcom/ss/android/vesdk/TERecorder;Z)Z

    .line 341
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInitDoneCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1200(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 342
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    if-eqz v0, :cond_18d

    .line 345
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    goto/16 :goto_18d

    .line 348
    :cond_10e
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_COUNT_OF_LAST_FRAG_FRAMES:I

    if-ne p1, v0, :cond_119

    .line 349
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mCountOfLastFragFrames:I
    invoke-static {v0, p2}, Lcom/ss/android/vesdk/TERecorder;->access$402(Lcom/ss/android/vesdk/TERecorder;I)I

    goto/16 :goto_18d

    .line 350
    :cond_119
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_NEED_MIC:I

    if-ne p1, v0, :cond_123

    .line 351
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->startAudioCaptureIfNeed()I
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1400(Lcom/ss/android/vesdk/TERecorder;)I

    goto :goto_18d

    .line 352
    :cond_123
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_FIRST_FRAME_SCREEN:I

    if-ne p1, v0, :cond_128

    goto :goto_18d

    .line 354
    :cond_128
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_RENDER_FPS:I

    if-ne p1, v0, :cond_145

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview render fps = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput p3, v0, Lcom/ss/android/vesdk/TERecorderBase;->previewRenderFps:F

    goto :goto_18d

    .line 357
    :cond_145
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_RENDER_FPS:I

    if-ne p1, v0, :cond_162

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record render fps = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput p3, v0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    goto :goto_18d

    .line 360
    :cond_162
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_WRITE_FPS:I

    if-ne p1, v0, :cond_17f

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record write fps = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput p3, v0, Lcom/ss/android/vesdk/TERecorderBase;->recordWriteFps:F

    goto :goto_18d

    .line 363
    :cond_17f
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_FRAME_SCREEN:I

    if-ne p1, v0, :cond_18d

    .line 364
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    if-eqz v0, :cond_18d

    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->OnFrameAvailable(Lcom/ss/android/ttve/model/VEFrame;)V

    .line 370
    :cond_18d
    :goto_18d
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_19e

    .line 371
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    .line 374
    :cond_19e
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_FIRST_FAKE_FRAME:I

    if-ne p1, p3, :cond_1b7

    .line 375
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p3

    const-string p4, "ve_camera_enable_preview_fake_frame_gaussian_blur"

    invoke-virtual {p3, p4, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1b7

    .line 377
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p3, v2}, Lcom/ss/android/vesdk/TERecorder;->releasePreviewFakeFrameResource(Z)V

    .line 381
    :cond_1b7
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # invokes: Lcom/ss/android/vesdk/TERecorder;->monitorData(II)V
    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->access$1600(Lcom/ss/android/vesdk/TERecorder;II)V

    return-void
.end method
