.class Lcom/ss/android/vesdk/TECameraVideoRecorder$59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$degree:I

.field final synthetic val$height:I

.field final synthetic val$needPreviewAfterCapture:Z

.field final synthetic val$preventRenderAfterRender:Z

.field final synthetic val$value:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ILandroid/os/Bundle;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZIIIZ)V
    .registers 10

    .line 4303
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$value:I

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$bundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput-boolean p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$needPreviewAfterCapture:Z

    iput p6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$width:I

    iput p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$height:I

    iput p8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$degree:I

    iput-boolean p9, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$preventRenderAfterRender:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 11

    .line 4306
    iget p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$value:I

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1b

    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$bundle:Landroid/os/Bundle;

    const-string v0, "support_light_soft"

    .line 4307
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 4308
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_OFF:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    invoke-virtual {p2, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V

    :cond_1b
    if-nez p1, :cond_35

    .line 4311
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p1, :cond_27

    const/4 p2, 0x0

    const/16 v0, -0x3e8

    .line 4312
    invoke-interface {p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 4315
    :cond_27
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_34

    .line 4316
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_34
    return-void

    .line 4321
    :cond_35
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p2, :cond_40

    .line 4322
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$width:I

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$height:I

    invoke-interface {p2, v0, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    .line 4326
    :cond_40
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2ImageFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v3

    .line 4327
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2VEFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p2

    .line 4330
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "TECam_capture_0_ori"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpImg4Debug(Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V

    .line 4332
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v2

    iget v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$width:I

    iget v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$height:I

    iget v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$degree:I

    new-instance v7, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;

    invoke-direct {v7, p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$59$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$59;Lcom/ss/android/ttve/model/VEFrame;)V

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    return-void
.end method

.method public onTakenFail(Ljava/lang/Exception;)V
    .registers 4

    .line 4367
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz v0, :cond_26

    .line 4369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x3e8

    if-eqz p1, :cond_20

    .line 4371
    const-string v1, "errorCode="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 4373
    :try_start_14
    array-length v1, p1

    if-lez v1, :cond_20

    .line 4374
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_20

    .line 4380
    :catch_20
    :cond_20
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    .line 4383
    :cond_26
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->val$needPreviewAfterCapture:Z

    if-eqz p1, :cond_33

    .line 4384
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startPreview()I

    :cond_33
    return-void
.end method
