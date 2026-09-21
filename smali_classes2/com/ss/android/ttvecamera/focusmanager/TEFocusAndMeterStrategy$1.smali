.class Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFocusDone:Z

.field private mLastAfState:I

.field final synthetic this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

.field final synthetic val$focusLock:Z

.field final synthetic val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 54
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$focusLock:Z

    iput-object p3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mLastAfState:I

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mIsFocusDone:Z

    return-void
.end method

.method private enableNextManualFocus()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 61
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$000(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_12
    return-void
.end method

.method private onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    .line 66
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$focusLock:Z

    if-eqz v0, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v0, p1, v1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 70
    :cond_1b
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->enableNextManualFocus()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Manual Focus capture buffer lost , session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TEFocusAndMeterStrategy"

    invoke-static {p3, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_32

    .line 151
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p3, p3, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {p3}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result p3

    const-string p4, "Manual Focus capture buffer lost "

    const/16 p5, -0x19b

    invoke-interface {p2, p5, p3, p4}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 153
    :cond_32
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 10

    .line 77
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 78
    const-string v0, "TEFocusAndMeterStrategy"

    if-nez p2, :cond_15

    .line 79
    const-string p1, "Focus failed."

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->enableNextManualFocus()V

    return-void

    .line 85
    :cond_15
    iget v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mLastAfState:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_34

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus onCaptureCompleted! afState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 89
    :goto_35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mLastAfState:I

    const/4 v2, 0x5

    const/4 v4, 0x4

    if-eqz v1, :cond_a8

    .line 94
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_4b

    .line 95
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_a8

    .line 96
    :cond_4b
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$focusLock:Z

    if-eqz v1, :cond_5b

    .line 98
    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object v1

    iget-object v5, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v1, p1, v5}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_64

    .line 101
    :cond_5b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 103
    :goto_64
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mIsFocusDone:Z

    if-nez p1, :cond_87

    .line 104
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mIsFocusDone:Z

    .line 105
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p1, :cond_87

    .line 106
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v5, "Done"

    invoke-interface {p1, v1, v3, v5}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 109
    :cond_87
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->enableNextManualFocus()V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focus done, isLock = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->val$focusLock:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afState = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_a8
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->mIsFocusDone:Z

    if-eqz p1, :cond_c6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_c6

    .line 114
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_c6

    .line 115
    const-string p1, "afState error!!!, may be re-auto-focus in some device, switch to caf"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    .line 120
    :cond_c6
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    if-eqz p1, :cond_d2

    .line 121
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->finalizeCameraResult(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    :cond_d2
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manual Focus Failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TEFocusAndMeterStrategy"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_3a

    .line 130
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, -0x19b

    invoke-interface {p2, v1, v0, p3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 132
    :cond_3a
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 165
    const-string p0, "TEFocusAndMeterStrategy"

    const-string p1, "Focus onCaptureProgressed!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 6

    .line 137
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 138
    const-string p2, "TEFocusAndMeterStrategy"

    const-string v0, "Manual Focus capture abort "

    invoke-static {p2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p2, :cond_1f

    .line 140
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p2

    iget-object v1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/16 v2, -0x1b6

    invoke-interface {p2, v2, v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 142
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->onTouchFocusFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 171
    const-string p1, "TEFocusAndMeterStrategy"

    const-string p2, "Focus onCaptureSequenceCompleted!"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;->enableNextManualFocus()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 158
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 159
    const-string p0, "TEFocusAndMeterStrategy"

    const-string p1, "Focus onCaptureStarted!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
