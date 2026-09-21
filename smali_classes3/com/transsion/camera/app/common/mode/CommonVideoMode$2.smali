.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


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

    .line 2177
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 2201
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 3

    .line 2190
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCaptureFailed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2191
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return-void
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    .line 2180
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted(IZJ)V

    return-void
.end method

.method public onDoCapture()V
    .registers 1

    return-void
.end method
