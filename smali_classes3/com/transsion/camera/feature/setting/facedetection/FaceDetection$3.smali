.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;
.super Landroid/os/Handler;
.source "SourceFile"


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

    .line 318
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_21

    if-eq p1, v1, :cond_9

    return-void

    .line 329
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection(Z)V

    .line 332
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    return-void

    .line 323
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->startFaceInfoDection()V

    .line 326
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHandle(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
