.class Lcom/ss/android/vesdk/TECameraVideoRecorder$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$captureStartTime:J

.field final synthetic val$degree:I

.field final synthetic val$needPreviewAfterCapture:Z

.field final synthetic val$preventRenderAfterRender:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZIJZ)V
    .registers 8

    .line 4435
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$needPreviewAfterCapture:Z

    iput p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$degree:I

    iput-wide p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$captureStartTime:J

    iput-boolean p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$preventRenderAfterRender:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 15

    const/4 p2, 0x0

    if-nez p1, :cond_1a

    .line 4439
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p1, :cond_c

    const/16 v0, -0x3e8

    .line 4440
    invoke-interface {p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 4443
    :cond_c
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_b4

    .line 4444
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    return-void

    .line 4448
    :cond_1a
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 4449
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 4450
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;
    invoke-static {v2, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5700(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    .line 4451
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v3, :cond_37

    .line 4452
    iget v4, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iget v5, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {v3, v4, v5}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    .line 4456
    :cond_37
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2ImageFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v3

    .line 4457
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;
    invoke-static {v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEPreviewSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v4

    .line 4458
    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v5, v5, Lcom/ss/android/vesdk/TERecorderBase;->mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    if-eqz v5, :cond_54

    .line 4460
    invoke-interface {v5, v1, v0}, Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;->proxy(II)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v0

    if-eqz v0, :cond_54

    move v6, p2

    move-object v7, v0

    goto :goto_56

    :cond_54
    move-object v7, v3

    move v6, v4

    .line 4467
    :goto_56
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v0, "TECam_capture_1_ori"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpImg4Debug(Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V
    invoke-static {p2, p1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V

    .line 4469
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2VEFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p2

    .line 4470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start renderPicture to bitmap, getPixelFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v5

    iget v8, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iget v9, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iget v10, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$degree:I

    new-instance v11, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;

    invoke-direct {v11, p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$60$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$60;Lcom/ss/android/ttve/model/VEFrame;)V

    invoke-virtual/range {v5 .. v11}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPictureToBitmap(ZLcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    .line 4506
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMetadata()Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    move-result-object p0

    if-eqz p0, :cond_b4

    .line 4509
    iget p1, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->width:I

    .line 4510
    iget p1, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->height:I

    .line 4512
    :try_start_a7
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->flatten()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/model/VEFrame;->setMetaData(Ljava/util/HashMap;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ae} :catch_af

    return-void

    :catch_af
    move-exception v0

    move-object p0, v0

    .line 4514
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b4
    return-void
.end method

.method public onTakenFail(Ljava/lang/Exception;)V
    .registers 4

    .line 4521
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v0, :cond_26

    .line 4523
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x3e8

    if-eqz p1, :cond_20

    .line 4525
    const-string v1, "errorCode="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 4527
    :try_start_14
    array-length v1, p1

    if-lez v1, :cond_20

    .line 4528
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_20

    .line 4534
    :catch_20
    :cond_20
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 4536
    :cond_26
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_33

    .line 4537
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_33
    return-void
.end method
