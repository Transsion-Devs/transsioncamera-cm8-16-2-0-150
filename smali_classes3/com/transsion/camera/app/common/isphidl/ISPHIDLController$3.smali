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

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    const/4 p0, 0x0

    .line 658
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisPostALgoBSSing(Z)V

    .line 659
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 660
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
    .registers 3

    if-eqz p1, :cond_f

    .line 644
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isCusDeferRequestMode()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 645
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmCallback()Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->processPreview()V

    :cond_f
    const/4 p0, 0x0

    .line 647
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfputisPostALgoShot2Shoting(Z)V

    .line 648
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 649
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 651
    :cond_30
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetsShot2ShotCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 652
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    goto :goto_38

    :cond_48
    return-void
.end method

.method public processPreview()V
    .registers 1

    .line 666
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 667
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

    .line 673
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 674
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->saveHighQualityJpegDone()V

    :cond_1d
    return-void
.end method
