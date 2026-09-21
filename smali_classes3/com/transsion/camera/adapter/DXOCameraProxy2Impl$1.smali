.class Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->setShot2ShotCallbackRef(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

.field final synthetic val$callbackRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$gRkPyxY7HfisnnVJu4Sl3-2gtqk(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->lambda$onNextReady$0(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    iput-object p2, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNextReady$0(Landroid/os/Handler;)V
    .registers 4

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmRestoreParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_d

    .line 73
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    :cond_d
    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_d

    .line 55
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 57
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3e

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(I)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getRequestHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;)V

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 63
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    .line 64
    instance-of p1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz p1, :cond_4d

    .line 65
    check-cast p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->resetFaceRectangles()V

    :cond_4d
    return-void
.end method

.method public processPreview()V
    .registers 1

    return-void
.end method

.method public saveHighQualityJpegDone()V
    .registers 1

    return-void
.end method
