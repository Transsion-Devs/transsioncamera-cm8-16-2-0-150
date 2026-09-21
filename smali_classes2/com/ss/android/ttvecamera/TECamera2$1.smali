.class Lcom/ss/android/ttvecamera/TECamera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera2;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera2;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 286
    new-instance v0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    invoke-direct {v0, p1}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;-><init>(Lcom/ss/android/ttvecamera/TECamera2;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    .line 359
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v0, p0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v0, :cond_f

    .line 360
    check-cast p0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    const/4 v0, 0x4

    const/4 v1, -0x1

    .line 361
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->onDeviceProxy(Landroid/hardware/camera2/CameraDevice;II)V

    :cond_f
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 327
    const-string v0, "TECamera2"

    const-string v1, "onDisconnected: OpenCameraCallBack"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v1, v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v1, :cond_16

    .line 329
    check-cast v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 330
    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->onDeviceProxy(Landroid/hardware/camera2/CameraDevice;II)V

    .line 333
    :cond_16
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    .line 334
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    if-eqz p0, :cond_22

    .line 335
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onDisconnected(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 6

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v2, v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v2, :cond_24

    .line 343
    check-cast v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    const/4 v2, 0x3

    .line 344
    invoke-virtual {v0, p1, v2, p2}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->onDeviceProxy(Landroid/hardware/camera2/CameraDevice;II)V

    .line 347
    :cond_24
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    .line 348
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    if-nez v0, :cond_33

    .line 349
    const-string p0, "had called onError"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_33
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onError(Ljava/lang/Object;I)Z

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 8

    .line 290
    const-string v0, "onOpened: OpenCameraCallBack"

    const-string v1, "TECamera2"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v2, "did start camera2"

    const/4 v3, 0x0

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    instance-of v2, v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    if-eqz v2, :cond_22

    .line 293
    check-cast v0, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;

    const/4 v2, -0x1

    .line 294
    invoke-virtual {v0, p1, v5, v2}, Lcom/ss/android/ttvecamera/armode/TEARVideoMode;->onDeviceProxy(Landroid/hardware/camera2/CameraDevice;II)V

    .line 296
    :cond_22
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iput-object p1, v0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 297
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->setCameraDevice(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->openCameraLock()V

    .line 300
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->stateCallback:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    if-eqz v0, :cond_8c

    invoke-virtual {v0, p1}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onOpened(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_8c

    .line 304
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECamera2;->mIsCameraOpenCloseSyncEnable:Z

    if-eqz v2, :cond_56

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECamera2;->mIsRequestCloseIntent:Z

    if-eqz v2, :cond_56

    .line 305
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraDevice;)V

    .line 306
    const-string p1, "onOpened: OpenCameraCallBack, but had camera close intent..."

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iput-boolean v5, p0, Lcom/ss/android/ttvecamera/TECamera2;->mIsRequestCloseIntent:Z

    return-void

    .line 311
    :cond_56
    iget-object p1, v0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    if-eqz p1, :cond_8b

    .line 313
    :try_start_5c
    iget-object p1, v0, Lcom/ss/android/ttvecamera/TECamera2;->mMode:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createSessionByDeferredSurface()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpened: createSessionByDeferredSurface, some bad case occur, close camera! exception msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-boolean v5, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 318
    iget p1, p1, Lcom/ss/android/ttvecamera/TECamera2;->mSessionState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8b

    .line 319
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECamera2;->startCapture()V

    :cond_8b
    return-void

    .line 301
    :cond_8c
    :goto_8c
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraDevice;)V

    .line 302
    const-string p0, "onOpened: OpenCameraCallBack, some bad case occur, close camera!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
