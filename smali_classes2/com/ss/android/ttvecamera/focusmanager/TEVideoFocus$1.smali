.class Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFocusDone:Z

.field private mLastAfState:I

.field final synthetic this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

.field final synthetic val$focusLock:Z

.field final synthetic val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 34
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$focusLock:Z

    iput-object p3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mLastAfState:I

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mIsFocusDone:Z

    return-void
.end method

.method private enableNextManualFocus()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 41
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_12
    return-void
.end method

.method private onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    .line 46
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$focusLock:Z

    if-eqz v0, :cond_1b

    .line 47
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v0, p1, v1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 50
    :cond_1b
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->enableNextManualFocus()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 133
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 134
    const-string p2, "TEVideoFocus"

    const-string p3, "Manual Focus capture buffer lost "

    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_21

    .line 136
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object p4, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p4, p4, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {p4}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result p4

    const/16 p5, -0x19b

    invoke-interface {p2, p5, p4, p3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 138
    :cond_21
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 10

    .line 57
    const-string v0, "TEVideoFocus"

    if-eqz p2, :cond_104

    const-string v1, "FOCUS_TAG"

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_104

    .line 62
    :cond_12
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual Focus onCaptureCompleted: afState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", triggerState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_49

    .line 66
    const-string p1, "Focus failed."

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->enableNextManualFocus()V

    return-void

    .line 73
    :cond_49
    iget p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mLastAfState:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p2, v3, :cond_cd

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v5, :cond_5f

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_cd

    .line 76
    :cond_5f
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$focusLock:Z

    if-eqz p2, :cond_79

    .line 78
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 79
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p2

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {p2, p1, v2}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_88

    .line 80
    :cond_79
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-nez p2, :cond_88

    .line 82
    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 84
    :cond_88
    :goto_88
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mIsFocusDone:Z

    if-nez p1, :cond_ac

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mIsFocusDone:Z

    .line 86
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p1, :cond_ac

    .line 87
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result p2

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v3, "Done"

    invoke-interface {p1, p2, v2, v3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 90
    :cond_ac
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->enableNextManualFocus()V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Focus done, isLock = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->val$focusLock:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", afState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_cd
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mIsFocusDone:Z

    if-eqz p1, :cond_f1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_f1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_f1

    .line 96
    const-string p1, "afState error!!!, may be re-auto-focus in some device, switch to caf"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-nez p2, :cond_f1

    .line 100
    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 103
    :cond_f1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->mLastAfState:I

    .line 105
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    if-eqz p1, :cond_103

    .line 106
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->finalizeCameraResult(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    :cond_103
    return-void

    .line 58
    :cond_104
    :goto_104
    const-string p1, "Not focus request!"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->enableNextManualFocus()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manual Focus Failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TEVideoFocus"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_32

    .line 115
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, -0x19b

    invoke-interface {p2, v1, v0, p3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 117
    :cond_32
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 150
    const-string p0, "TEVideoFocus"

    const-string p1, "Focus onCaptureProgressed!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 6

    .line 122
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 123
    const-string p2, "TEVideoFocus"

    const-string v0, "Manual Focus capture abort "

    invoke-static {p2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_1f

    .line 125
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v2, -0x1b6

    invoke-interface {p2, v2, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 127
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 156
    const-string p1, "TEVideoFocus"

    const-string p2, "Focus onCaptureSequenceCompleted!"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus$1;->enableNextManualFocus()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 143
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 144
    const-string p0, "TEVideoFocus"

    const-string p1, "Focus onCaptureStarted!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
