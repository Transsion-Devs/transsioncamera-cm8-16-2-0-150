.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CapturePictureCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

.field mIsCaptureProgressed:Z

.field private mIsCaptureSoundPlayed:Z

.field private mIsShot2ShotProcessed:Z

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 4

    .line 3734
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    const/4 v0, 0x0

    .line 3730
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureProgressed:Z

    .line 3731
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsShot2ShotProcessed:Z

    .line 3732
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureSoundPlayed:Z

    .line 3735
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    .line 3736
    iget-boolean p0, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmNeedCaptureSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 3737
    iget p0, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmCurShutterPriority(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    .line 3738
    iget-boolean p0, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mIsSupportShutterSound:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsSupportShutterSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 7

    .line 3837
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 3839
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result p2

    .line 3841
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture [onCaptureCompleted] session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", algorithmMigrate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3843
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3846
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureProgressed:Z

    if-nez p1, :cond_52

    .line 3847
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 3849
    :cond_52
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsShot2ShotProcessed:Z

    if-nez p1, :cond_5f

    .line 3850
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckShot2ShotResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    .line 3854
    :cond_5f
    new-instance p1, Lcom/transsion/camera/adapter/CameraResults2Impl;

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p1, p2}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 3855
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractResults(Landroid/hardware/camera2/CaptureResult;)V

    .line 3856
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p2, :cond_78

    .line 3857
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, p1, p3, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 3859
    :cond_78
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p2, :cond_85

    .line 3860
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, p1, p3, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 3863
    :cond_85
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result p1

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_dd

    .line 3864
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawPictureSize()Ljava/util/List;

    move-result-object p1

    .line 3865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-le p1, v0, :cond_ce

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 3866
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->getMetadataNative(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misSatCamera(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineJniMetadata(Ljava/lang/Object;ZZ)V

    .line 3867
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->getMetadataNative(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misSatCamera(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineJniMetadata(Ljava/lang/Object;ZZ)V

    return-void

    .line 3869
    :cond_ce
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->getMetadataNative(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misSatCamera(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p0

    invoke-virtual {p1, p3, p2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineJniMetadata(Ljava/lang/Object;ZZ)V

    :cond_dd
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 11

    .line 3893
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 3894
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture [onCaptureFailed] session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mReleased: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wasImageCaptured: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3896
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",fn: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3897
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3894
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3898
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy;->sCaptureCheckForDebug:Lcom/transsion/camera/utils/debug/ICaptureCheck;

    if-eqz p1, :cond_58

    .line 3899
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/utils/debug/ICaptureCheck;->onCaptureFailedByFrameNumber(J)V

    .line 3901
    :cond_58
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p1

    .line 3902
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 3903
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p3

    if-eq p3, v2, :cond_a4

    .line 3904
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p3, p3, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p3, :cond_84

    .line 3905
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide v3

    const/4 p1, 0x0

    invoke-interface {p3, v3, v4, v1, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(JZ[J)V

    .line 3907
    :cond_84
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->onCaptureFailed(I)V

    .line 3908
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    return-void

    .line 3912
    :cond_95
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p2

    if-eqz p2, :cond_a5

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misLongExposureMode(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_a4

    goto :goto_a5

    :cond_a4
    return-void

    .line 3913
    :cond_a5
    :goto_a5
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide p1

    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetsCaptureID()I

    move-result v0

    int-to-long v3, v0

    .line 3914
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v5

    new-array p3, v2, [J

    const/4 v0, 0x0

    aput-wide v3, p3, v0

    aput-wide v5, p3, v1

    .line 3913
    invoke-interface {p0, p1, p2, v1, p3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(JZ[J)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    .line 3816
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 3817
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureProgressed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3818
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureProgressed:Z

    .line 3819
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 3820
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckShot2ShotResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsShot2ShotProcessed:Z

    .line 3821
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_50

    .line 3822
    new-instance p1, Lcom/transsion/camera/adapter/CameraResults2Impl;

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p1, p2}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 3823
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractResults(Landroid/hardware/camera2/CaptureResult;)V

    .line 3824
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 3826
    :cond_50
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_6d

    .line 3827
    new-instance p1, Lcom/transsion/camera/adapter/CameraResults2Impl;

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {p1, p2}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 3828
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractResults(Landroid/hardware/camera2/CaptureResult;)V

    .line 3829
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_6d
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 4

    .line 3885
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 3886
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capture [onCaptureSequenceAborted] session:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 3876
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 3877
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "capture [onCaptureSequenceCompleted] session:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3878
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOfflineJniSupport()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 3879
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->offlineJniProcess()V

    :cond_34
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 16

    .line 3745
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    move-wide v3, p3

    .line 3746
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p3

    const/4 p4, 0x0

    const/4 v7, 0x1

    if-nez p3, :cond_19

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsCancelCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_19

    :cond_17
    move v2, p4

    goto :goto_1a

    :cond_19
    :goto_19
    move v2, v7

    :goto_1a
    if-eqz v2, :cond_3a

    .line 3749
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CapturePerformance] [onCaptureStarted] camera proxy has release, mIsCancelCapture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsCancelCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3751
    :cond_3a
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result p3

    const/4 v8, 0x2

    if-eqz p3, :cond_84

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object p3

    if-eqz p3, :cond_84

    .line 3752
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {p3, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmRawCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    .line 3753
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p3

    if-lez p3, :cond_84

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p3

    if-eq p3, v8, :cond_84

    .line 3754
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[CapturePerformance] [onCaptureStarted] mRawCaptureCount:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3758
    :cond_84
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CapturePerformance] [onCaptureStarted] session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; frameNumber="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " , mNeedCaptureSound:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmNeedCaptureSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; mUsePreAECaptureForSprd:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmUsePreAECaptureForSprd(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3761
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p1

    if-eqz p1, :cond_f7

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p1

    if-eqz p1, :cond_f7

    .line 3762
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetisPostAlgoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_f2

    .line 3763
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[CapturePerformance] [onCaptureStarted]postAlgoCapture return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3766
    :cond_f2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, p4}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputisPostAlgoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 3768
    :cond_f7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmNeedCaptureSound(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmNeedCaptureCoverAnimation(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_126

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmUsePreAECaptureForSprd(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_126

    if-nez v2, :cond_126

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsPause(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_126

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureSoundPlayed:Z

    if-nez p1, :cond_126

    .line 3770
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const-string p3, "camera_click.ogg"

    invoke-static {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mdoShutterSoundPlay(Lcom/transsion/camera/adapter/CameraProxy2Impl;Ljava/lang/String;)V

    .line 3771
    iput-boolean v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mIsCaptureSoundPlayed:Z

    .line 3773
    :cond_126
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy;->sCaptureCheckForDebug:Lcom/transsion/camera/utils/debug/ICaptureCheck;

    if-eqz p1, :cond_12d

    .line 3774
    invoke-interface {p1, p5, p6, v3, v4}, Lcom/transsion/camera/utils/debug/ICaptureCheck;->onCaptureStarted(JJ)V

    .line 3776
    :cond_12d
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    const/4 p3, -0x1

    if-eqz p1, :cond_17b

    .line 3777
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result p1

    if-eqz p1, :cond_164

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_164

    .line 3778
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p1

    if-ne p1, p3, :cond_17b

    .line 3779
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;ZJJ)V

    goto :goto_17b

    .line 3782
    :cond_164
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;ZJJ)V

    .line 3785
    :cond_17b
    :goto_17b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFastFreezeOnCaptureStarted:Z

    if-eqz p1, :cond_188

    .line 3786
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mfastFreeze(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 3788
    :cond_188
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_195

    .line 3789
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p4

    invoke-interface {p1, v3, v4, p4}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 3791
    :cond_195
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_1e1

    .line 3792
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result p1

    if-eqz p1, :cond_1ca

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRawImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)[Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1ca

    .line 3793
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p1

    if-ne p1, p3, :cond_1e1

    .line 3794
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p3

    invoke-interface {p1, v3, v4, p3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 3795
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result p2

    invoke-interface {p1, v3, v4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->onCaptureStarted(JI)V

    goto :goto_1e1

    .line 3798
    :cond_1ca
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;ZJJ)V

    .line 3801
    :cond_1e1
    :goto_1e1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p1

    if-eq p1, v8, :cond_1ee

    .line 3802
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmOfflineCaptureStatus(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    .line 3804
    :cond_1ee
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getGroupCaptureEnable()I

    move-result p1

    if-ne p1, v7, :cond_22f

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsGroupCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_22f

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmNeedCaptureCoverAnimation(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_22f

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsGroupCaptureAnimationPlayed(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_22f

    .line 3806
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmGroupCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p2

    add-int/2addr p2, v7

    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmGroupCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    .line 3807
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmGroupCaptureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_22f

    .line 3808
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mplayShutterSoundAndRunCaptureAnimation(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 3809
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsGroupCaptureAnimationPlayed(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    :cond_22f
    return-void
.end method
