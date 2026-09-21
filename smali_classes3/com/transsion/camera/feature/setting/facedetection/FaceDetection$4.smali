.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 356
    invoke-static {}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted, face value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->resetFaceDetectionState()V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionCallback(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$mrequestFaceDetection(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 5

    .line 343
    invoke-static {}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection(Z)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 350
    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2e
    return-void
.end method
