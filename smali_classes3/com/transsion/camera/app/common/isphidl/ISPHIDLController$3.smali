.class Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    const/4 p0, 0x0

    .line 649
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisPostALgoBSSing(Z)V

    .line 650
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 651
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    :cond_21
    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 2

    if-eqz p1, :cond_f

    .line 638
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isCusDeferRequestMode()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 639
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmCallback()Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->processPreview()V

    :cond_f
    const/4 p0, 0x0

    .line 641
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisPostALgoShot2Shoting(Z)V

    .line 642
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 643
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_30
    return-void
.end method

.method public processPreview()V
    .registers 1

    .line 657
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 658
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->processPreview()V

    :cond_1d
    return-void
.end method

.method public saveHighQualityJpegDone()V
    .registers 1

    .line 664
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 665
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->saveHighQualityJpegDone()V

    :cond_1d
    return-void
.end method
