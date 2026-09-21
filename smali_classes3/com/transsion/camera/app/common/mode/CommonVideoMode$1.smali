.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .registers 2

    .line 2155
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapShot(Z)V
    .registers 5

    .line 2158
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSnapShot mInTakingPicture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canSnapShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    if-eqz v0, :cond_2b

    goto :goto_6f

    :cond_2b
    if-eqz p1, :cond_6f

    .line 2163
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_3b

    .line 2165
    iget-object p0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSnapShot] mCameraDeviceControl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2168
    :cond_3b
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    .line 2169
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 2170
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2171
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->-$$Nest$fgetmPictureCallback(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 2172
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    :cond_6f
    :goto_6f
    return-void
.end method
