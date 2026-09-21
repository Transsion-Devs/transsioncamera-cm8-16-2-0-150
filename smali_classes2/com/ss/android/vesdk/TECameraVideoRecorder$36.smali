.class Lcom/ss/android/vesdk/TECameraVideoRecorder$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fpsDowngrade:F

.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 2765
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2766
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->fpsDowngrade:F

    return-void
.end method


# virtual methods
.method public onExtFrameDataAttached(Ljava/lang/Object;)V
    .registers 4

    .line 2866
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TextureHolder;->setIsFirstFrameAfterARCoreResume(Z)V

    .line 2867
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->attachExtFrameData(Ljava/lang/Object;)V

    return-void
.end method

.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 11

    .line 2788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2789
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    if-nez v2, :cond_14

    .line 2790
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "Frame captured in idle status!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2794
    :cond_14
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-boolean v2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    const/4 v3, 0x1

    if-nez v2, :cond_60

    .line 2795
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v4, "ve_recorder_fps_downgrade"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->fpsDowngrade:F

    .line 2796
    const-string v2, "TECameraVideoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera texture size : [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean v3, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    .line 2800
    :cond_60
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v2, v4, :cond_80

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-eq v2, v4, :cond_9c

    .line 2801
    :cond_80
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iput v4, v2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2802
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iput v4, v2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2804
    :cond_9c
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getFacing()I

    move-result v4

    if-ne v2, v4, :cond_b4

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v4

    if-eq v2, v4, :cond_d1

    .line 2805
    :cond_b4
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2806
    :try_start_b9
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getFacing()I

    move-result v5

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I
    invoke-static {v4, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3902(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 2807
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v5

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I
    invoke-static {v4, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4002(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 2808
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceChanged:Z
    invoke-static {v4, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 2809
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_b9 .. :try_end_d1} :catchall_2a9

    .line 2812
    :cond_d1
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v2

    .line 2813
    sget-object v4, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1e0

    sget-object v4, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v2, v4, :cond_e0

    goto/16 :goto_1e0

    .line 2827
    :cond_e0
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getType()I

    move-result v4

    const-wide/16 v6, 0x3e8

    if-ne v4, v5, :cond_15c

    .line 2828
    new-instance v2, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPlans()Lcom/ss/android/ttvecamera/TEPlane;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/vesdk/utils/TEPlanUtils;->convert(Lcom/ss/android/ttvecamera/TEPlane;)Lcom/ss/android/medialib/camera/Plane;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    const/4 v8, -0x2

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Lcom/ss/android/medialib/camera/Plane;III)V

    .line 2829
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v3, :cond_13a

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v3

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v3, v4, :cond_111

    goto :goto_13a

    .line 2832
    :cond_111
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object p1

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne p1, v3, :cond_26a

    .line 2833
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v4

    iget-boolean v4, v4, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    invoke-virtual {p1, v2, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I

    goto/16 :goto_26a

    .line 2830
    :cond_13a
    :goto_13a
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrameTime(D)I

    .line 2831
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v3

    iget-boolean v3, v3, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I

    goto/16 :goto_26a

    .line 2835
    :cond_15c
    sget-object v4, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-eq v2, v4, :cond_16e

    sget-object v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v2, v5, :cond_165

    goto :goto_16e

    .line 2847
    :cond_165
    const-string p1, "TECameraVideoRecorder"

    const-string v2, "Not support now!!"

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26a

    :cond_16e
    :goto_16e
    if-ne v2, v4, :cond_171

    const/4 v3, -0x3

    .line 2839
    :cond_171
    new-instance v2, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v2, v4, v3, v5, v8}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    .line 2840
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v3, :cond_1be

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v3

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v3, v4, :cond_195

    goto :goto_1be

    .line 2843
    :cond_195
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object p1

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne p1, v3, :cond_26a

    .line 2844
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v4

    iget-boolean v4, v4, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    invoke-virtual {p1, v2, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I

    goto/16 :goto_26a

    .line 2841
    :cond_1be
    :goto_1be
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTimeStampNS()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrameTime(D)I

    .line 2842
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v3

    iget-boolean v3, v3, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I

    goto/16 :goto_26a

    .line 2815
    :cond_1e0
    :goto_1e0
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESensorInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VESensorInfoHolder;->isSensorMode()Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 2816
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->landMarkFrame:Lcom/ss/android/vesdk/LandMarkFrame;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/LandMarkFrame;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESensorInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VESensorInfoHolder;->getRotationSensorTimestamp()D

    move-result-wide v6

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESensorInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VESensorInfoHolder;->getQuaternion()[F

    move-result-object v4

    iget-object v8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;
    invoke-static {v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESensorInfoHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VESensorInfoHolder;->getFov()[F

    move-result-object v8

    invoke-virtual {v2, v6, v7, v4, v8}, Lcom/ss/android/vesdk/LandMarkFrame;->setInfo(D[F[F)V

    .line 2817
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableLandMark(Z)V

    .line 2818
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->landMarkFrame:Lcom/ss/android/vesdk/LandMarkFrame;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/LandMarkFrame;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setLandMarkInfo(Lcom/ss/android/vesdk/LandMarkFrame;)V

    goto :goto_236

    .line 2820
    :cond_22c
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableLandMark(Z)V

    .line 2822
    :goto_236
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    if-ne v2, v5, :cond_251

    .line 2823
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v2

    .line 2824
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/FrameIntervalCount;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/ss/android/vesdk/FrameIntervalCount;->addTimeStamp(D)V

    .line 2826
    :cond_251
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTextureID()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMVPMatrix()[F

    move-result-object p1

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v4

    iget-boolean v4, v4, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsCurrentFirstFrame:Z

    invoke-virtual {v2, v3, p1, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrame(I[FZ)I

    .line 2850
    :cond_26a
    :goto_26a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 2851
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->fpsDowngrade:F

    const p1, 0x3a83126f    # 0.001f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_2a8

    const-wide v0, 0x408f400000000000L    # 1000.0

    float-to-double p0, p0

    div-double/2addr v0, p0

    double-to-long p0, v0

    cmp-long v0, p0, v2

    if-lez v0, :cond_2a8

    sub-long/2addr p0, v2

    .line 2855
    :try_start_285
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 2856
    const-string v0, "TECameraVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameSleep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a3
    .catch Ljava/lang/InterruptedException; {:try_start_285 .. :try_end_2a3} :catch_2a4

    return-void

    :catch_2a4
    move-exception p0

    .line 2858
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a8
    return-void

    :catchall_2a9
    move-exception p0

    .line 2809
    :try_start_2aa
    monitor-exit v2
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_2a9

    throw p0
.end method

.method public onFrameSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 3

    .line 2783
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    iget v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCamPreviewSize(II)V

    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 2770
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2771
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 3

    .line 2776
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2777
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TextureHolder;->setNeedAttachToGLContext(Z)V

    return-void
.end method
