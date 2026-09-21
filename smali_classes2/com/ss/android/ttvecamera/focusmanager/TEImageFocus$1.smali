.class Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFocusDone:Z

.field private mLastAfState:I

.field final synthetic this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

.field final synthetic val$focusLock:Z

.field final synthetic val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 45
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$focusLock:Z

    iput-object p3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mLastAfState:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mIsFocusDone:Z

    return-void
.end method

.method private enableNextManualFocus()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 52
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_12
    return-void
.end method

.method private onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    .line 57
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$focusLock:Z

    if-eqz v0, :cond_19

    .line 58
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v0, p1, v1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 61
    :cond_19
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->enableNextManualFocus()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 138
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 139
    const-string p2, "TEImageFocus"

    const-string p3, "Manual Focus capture buffer lost "

    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_1f

    .line 141
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object p4, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object p4, p4, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p4, p4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 p5, -0x19b

    invoke-interface {p2, p5, p4, p3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 143
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 10

    .line 66
    const-string v0, "TEImageFocus"

    if-eqz p2, :cond_e1

    const-string v1, "FOCUS_TAG"

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_e1

    .line 71
    :cond_12
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_25

    .line 73
    const-string p1, "Focus failed."

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->enableNextManualFocus()V

    return-void

    .line 80
    :cond_25
    iget v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mLastAfState:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v1, v2, :cond_a7

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_3b

    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_a7

    .line 83
    :cond_3b
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$focusLock:Z

    if-eqz v1, :cond_55

    .line 85
    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v1, p1, v2}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_62

    .line 87
    :cond_55
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-nez v1, :cond_62

    .line 89
    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 91
    :cond_62
    :goto_62
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mIsFocusDone:Z

    if-nez p1, :cond_86

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mIsFocusDone:Z

    .line 93
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p1, :cond_86

    .line 94
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v5, "Done"

    invoke-interface {p1, v1, v2, v5}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 97
    :cond_86
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->enableNextManualFocus()V

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focus done, isLock = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->val$focusLock:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afState = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_a7
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mIsFocusDone:Z

    if-eqz p1, :cond_c9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_c9

    .line 102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_c9

    .line 103
    const-string p1, "afState error!!!, may be re-auto-focus in some device, switch to caf"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-nez v0, :cond_c9

    .line 106
    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 109
    :cond_c9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->mLastAfState:I

    .line 111
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->ifFinalize:Z
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 112
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->finalizeCameraResult(Ljava/lang/Object;)Z

    move-result p1

    # setter for: Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->ifFinalize:Z
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->access$102(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;Z)Z

    :cond_e0
    return-void

    .line 67
    :cond_e1
    :goto_e1
    const-string p0, "Not focus request!"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manual Focus Failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TEImageFocus"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_32

    .line 121
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, -0x19b

    invoke-interface {p2, v1, v0, p3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 123
    :cond_32
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 6

    .line 128
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 129
    const-string p2, "TEImageFocus"

    const-string v0, "Manual Focus capture abort "

    invoke-static {p2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_1f

    .line 131
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v2, -0x1b6

    invoke-interface {p2, v2, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 133
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
