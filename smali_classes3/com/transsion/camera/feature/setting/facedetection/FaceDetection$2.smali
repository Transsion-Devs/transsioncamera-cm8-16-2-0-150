.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


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

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_21
    return-void
.end method
