.class Lcom/ss/android/vesdk/VECameraCapture$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListenerWithAR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VECameraCapture;)V
    .registers 2

    .line 1707
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtFrameDataAttached(Ljava/lang/Object;)V
    .registers 3

    .line 1760
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {p0}, Lcom/ss/android/vesdk/VECameraCapture;->access$100(Lcom/ss/android/vesdk/VECameraCapture;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1761
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1762
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    if-eqz v0, :cond_1f

    .line 1763
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;->onExtFrameDataAttached(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 9

    .line 1710
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraCapture;->access$100(Lcom/ss/android/vesdk/VECameraCapture;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v0

    .line 1711
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object v1, v1, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_98

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object v1, v1, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getFacing()I

    move-result v2

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VECameraCapture;->access$200(Lcom/ss/android/vesdk/VECameraCapture;)Z

    move-result v1

    if-eq v1, v4, :cond_3a

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/ss/android/vesdk/VECameraCapture;->access$300(Lcom/ss/android/vesdk/VECameraCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_98

    .line 1714
    :cond_3a
    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/vesdk/VECameraCapture;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraFacing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object v2, v2, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  frameFacing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getFacing()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSwitchCamera:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$200(Lcom/ss/android/vesdk/VECameraCapture;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsConnected:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$300(Lcom/ss/android/vesdk/VECameraCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$200(Lcom/ss/android/vesdk/VECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 1716
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # setter for: Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z
    invoke-static {p1, v3}, Lcom/ss/android/vesdk/VECameraCapture;->access$202(Lcom/ss/android/vesdk/VECameraCapture;Z)Z

    goto :goto_b0

    :cond_98
    if-eqz v0, :cond_b0

    .line 1719
    invoke-virtual {v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 1720
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VECameraCapture;->access$500(Lcom/ss/android/vesdk/VECameraCapture;)Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    .line 1721
    invoke-virtual {v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;->onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    .line 1724
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$500(Lcom/ss/android/vesdk/VECameraCapture;)Z

    move-result p1

    if-nez p1, :cond_f8

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mPreviewStartTime:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$600(Lcom/ss/android/vesdk/VECameraCapture;)J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 1727
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object p1, p1, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    if-eqz p1, :cond_cf

    const/4 v2, 0x3

    .line 1729
    const-string v5, "Camera first frame captured"

    invoke-interface {p1, v2, v3, v5}, Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 1731
    :cond_cf
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # setter for: Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z
    invoke-static {p0, v4}, Lcom/ss/android/vesdk/VECameraCapture;->access$502(Lcom/ss/android/vesdk/VECameraCapture;Z)Z

    .line 1732
    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/vesdk/VECameraCapture;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera first frame captured\uff0cconsume: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string p0, "te_record_camera_preview_first_frame_cost"

    invoke-static {v3, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1734
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f8
    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1740
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {p0}, Lcom/ss/android/vesdk/VECameraCapture;->access$100(Lcom/ss/android/vesdk/VECameraCapture;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1741
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1742
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_15
    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 1748
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$11;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # getter for: Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {p0}, Lcom/ss/android/vesdk/VECameraCapture;->access$100(Lcom/ss/android/vesdk/VECameraCapture;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1750
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1751
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    if-eqz v0, :cond_1f

    .line 1752
    invoke-virtual {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V

    :cond_1f
    return-void
.end method
