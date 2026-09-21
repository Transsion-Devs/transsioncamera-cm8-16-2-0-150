.class Lcom/ss/android/vesdk/TECameraVideoRecorder$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 2872
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate()V
    .registers 12

    .line 2876
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "onOpenGLCreate"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v1, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v1}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4702(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/ConcurrentList;)Lcom/ss/android/vesdk/ConcurrentList;

    .line 2878
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->onCreate()V

    .line 2879
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2880
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->TWO_SURFACES:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v2, :cond_cd

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 2881
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq v0, v2, :cond_cd

    .line 2883
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 2884
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-direct {v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;-><init>()V

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    .line 2885
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->createRecordSurface()Landroid/view/Surface;

    .line 2886
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->prepareMediaRecorderForPreview()V
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    .line 2887
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz v2, :cond_8a

    instance-of v2, v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v2, :cond_8a

    .line 2888
    iget-object v2, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecorderErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

    if-nez v2, :cond_7d

    .line 2889
    new-instance v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$37$1;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$37$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$37;)V

    iput-object v2, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecorderErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

    .line 2896
    :cond_7d
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecorderErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->setErrorCallback(Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;)V

    .line 2899
    :cond_8a
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    move-object v5, v4

    iget-object v4, v5, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2900
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v6

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    .line 2901
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->createRecordSurface()Landroid/view/Surface;

    move-result-object v8

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 2899
    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    goto/16 :goto_21e

    .line 2902
    :cond_cd
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v0, :cond_1e7

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v2, :cond_dd

    goto/16 :goto_1e7

    .line 2907
    :cond_dd
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v3, :cond_135

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq v0, v4, :cond_135

    .line 2908
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 2909
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    move-object v5, v4

    iget-object v4, v5, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2910
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v6

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V

    .line 2909
    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    goto/16 :goto_21e

    .line 2913
    :cond_135
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v4, :cond_18d

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq v0, v4, :cond_18d

    .line 2914
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 2915
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    move-object v5, v4

    iget-object v4, v5, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2916
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v6

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V

    .line 2915
    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    goto/16 :goto_21e

    .line 2918
    :cond_18d
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v4, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;

    new-instance v5, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v6}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v6

    iget v6, v6, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v5, v2, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v6, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2919
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v2

    const/4 v10, 0x1

    if-ne v2, v3, :cond_1bf

    move v9, v10

    goto :goto_1c0

    :cond_1bf
    move v9, v1

    :goto_1c0
    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V

    .line 2918
    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 2921
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v2, :cond_1dd

    .line 2922
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initImageDrawer(I)I

    goto :goto_21e

    .line 2924
    :cond_1dd
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initImageDrawer(I)I

    goto :goto_21e

    .line 2903
    :cond_1e7
    :goto_1e7
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    new-instance v2, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    move-object v5, v4

    iget-object v4, v5, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2904
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v6

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V

    .line 2903
    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 2929
    :goto_21e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/ConcurrentList;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 2930
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    if-eqz v0, :cond_244

    .line 2931
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/ConcurrentList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ss/android/vesdk/camera/ICameraPreview;->start(Lcom/ss/android/vesdk/ConcurrentList;)I

    .line 2934
    :cond_244
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz p0, :cond_257

    instance-of v0, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v0, :cond_257

    .line 2935
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const/16 v0, 0x3e8

    const-string v2, "Render Env Created."

    invoke-interface {p0, v0, v1, v2}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_257
    return-void
.end method

.method public onOpenGLDestroy()V
    .registers 4

    .line 3006
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "onOpenGLDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5302(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEDisplaySettings;)Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 3008
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->onDestroy()V

    .line 3009
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/ConcurrentList;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 3010
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 3011
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->release()V

    .line 3012
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    .line 3014
    :cond_3b
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    .line 3015
    instance-of v0, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v0, :cond_4d

    .line 3016
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const/4 v0, 0x0

    const-string v1, "Render Env Destroyed."

    const/16 v2, 0x3e9

    invoke-interface {p0, v2, v0, v1}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public onOpenGLRunning()I
    .registers 7

    .line 2941
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceChanged:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    .line 2942
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2943
    :try_start_e
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    if-lez v2, :cond_6f

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    if-lez v2, :cond_6f

    .line 2944
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isFrameLandscape()Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    :goto_3f
    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_56

    :catchall_42
    move-exception p0

    goto :goto_9c

    :cond_44
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    goto :goto_3f

    .line 2945
    :goto_56
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPreviewSizeRatio(FII)V

    .line 2948
    :cond_6f
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7a

    move v2, v3

    goto :goto_7b

    :cond_7a
    move v2, v1

    .line 2949
    :goto_7b
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_85

    goto :goto_86

    :cond_85
    move v3, v1

    .line 2950
    :goto_86
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I
    invoke-static {v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateRotation(IZZ)V

    .line 2951
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceChanged:Z
    invoke-static {v2, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$4202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 2952
    monitor-exit v0

    goto :goto_9e

    :goto_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_e .. :try_end_9d} :catchall_42

    throw p0

    .line 2956
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    const/16 v2, -0x3e8

    if-eqz v0, :cond_f9

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v3, :cond_f9

    .line 2957
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v3, :cond_ef

    .line 2960
    :try_start_ba
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getExtParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "forceRunUpdateTexImg"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 2961
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d3} :catch_d4

    goto :goto_ef

    :catch_d4
    move-exception v0

    .line 2964
    const-string v3, "TECameraVideoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpenGLRunning error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    :cond_ef
    :goto_ef
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result p0

    if-eqz p0, :cond_f8

    return v2

    :cond_f8
    return v1

    .line 2975
    :cond_f9
    :try_start_f9
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V

    .line 2977
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_10b

    return v2

    .line 2981
    :cond_10b
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_19a

    .line 2983
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDrawFrameTime(D)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_12a} :catch_12b

    goto :goto_19a

    :catch_12b
    move-exception v0

    .line 2988
    const-string v2, "TECameraVideoRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpenGLRunning error msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", is can retry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    .line 2989
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/TextureHolder;->isNeedAttachToGLContext()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2988
    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TextureHolder;->isNeedAttachToGLContext()Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 2993
    :try_start_164
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 2994
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_17a} :catch_17b

    goto :goto_19a

    .line 2996
    :catch_17b
    const-string p0, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenGLRunning error msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", retry failed!!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19a
    :goto_19a
    return v1
.end method
