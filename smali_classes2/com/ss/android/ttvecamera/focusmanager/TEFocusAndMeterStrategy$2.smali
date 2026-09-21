.class Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->getMeteringCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsMeteringDone:Z

.field final synthetic this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

.field final synthetic val$isNeedFocus:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;Z)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->val$isNeedFocus:Z

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->mIsMeteringDone:Z

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 6

    .line 186
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_12

    .line 188
    const-string p0, "TEFocusAndMeterStrategy"

    const-string p1, "metering failed."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_20

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_51

    .line 192
    :cond_20
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->val$isNeedFocus:Z

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p1, :cond_48

    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->mIsMeteringDone:Z

    if-nez p2, :cond_48

    .line 193
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result p2

    iget-object v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v1, "Done"

    invoke-interface {p1, p2, v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->mIsMeteringDone:Z

    .line 196
    :cond_48
    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    # getter for: Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackMeteringSessionRequest()I

    .line 198
    :cond_51
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    if-eqz p1, :cond_5d

    .line 199
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->finalizeCameraResult(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mIsManualFinalize:Z

    :cond_5d
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 206
    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->val$isNeedFocus:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mFocusSettings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    if-eqz p1, :cond_20

    .line 207
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;->this$0:Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x19b

    invoke-interface {p1, v0, p0, p2}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 209
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Manual Metering Failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEFocusAndMeterStrategy"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
