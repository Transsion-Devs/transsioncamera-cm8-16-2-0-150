.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 387
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmContext(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->writeHeadsetSetting(Landroid/content/Context;I)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 390
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_50

    if-eqz v1, :cond_45

    .line 393
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceClosed(Ljava/lang/String;)V

    .line 395
    :cond_45
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fputmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fputmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    :cond_50
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    .line 402
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 404
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_2b

    if-eqz v1, :cond_26

    .line 407
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 409
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$mdoCloseCurrent(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    :cond_2b
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 6

    .line 415
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mCameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmStateWait(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraUser(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 420
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$smconvertCameraStateErrorCode(I)I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 421
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 422
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    .line 424
    :cond_5d
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$mdoCloseCurrent(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    .line 425
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelResponseTranSched(I)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 12

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_127

    .line 346
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setResponseTranSched(I)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fputmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseDXOArea()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 349
    new-instance v3, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v4, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v6, v2, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    iget-object v7, v2, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    iget-object v8, v2, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionHandler:Landroid/os/Handler;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_50

    :cond_3c
    move-object v5, p1

    .line 350
    new-instance v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    move-object v6, v5

    iget-object v5, p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v7, p1, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    iget-object v8, p1, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    iget-object v9, p1, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionHandler:Landroid/os/Handler;

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/adapter/CameraProxy2Impl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object v3, v4

    :goto_50
    invoke-static {v0, v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fputmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 351
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened] mCameraId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraProxy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmLock(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 353
    :try_start_86
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_9c

    if-nez v0, :cond_bd

    .line 355
    :try_start_90
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmLock(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_9b
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_9b} :catch_a0
    .catchall {:try_start_90 .. :try_end_9b} :catchall_9c

    goto :goto_bd

    :catchall_9c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_125

    :catch_a0
    move-exception v0

    .line 357
    :try_start_a1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOpened] error Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOpened] props:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v3

    if-eqz v0, :cond_115

    if-eqz v2, :cond_115

    if-eqz v3, :cond_115

    .line 365
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v4}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_123

    .line 367
    :cond_115
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "[onOpened] CameraDeviceInfo is error."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fputmDeviceInfoError(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)V

    .line 370
    :goto_123
    monitor-exit p1

    goto :goto_127

    :goto_125
    monitor-exit p1
    :try_end_126
    .catchall {:try_start_a1 .. :try_end_126} :catchall_9c

    throw p0

    .line 372
    :cond_127
    :goto_127
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmStateWait(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmContext(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->writeHeadsetSetting(Landroid/content/Context;I)V

    .line 376
    :try_start_13b
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_152

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->-$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_14c
    .catch Ljava/lang/SecurityException; {:try_start_13b .. :try_end_14c} :catch_14d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13b .. :try_end_14c} :catch_14d
    .catch Ljava/lang/IllegalStateException; {:try_start_13b .. :try_end_14c} :catch_14d

    goto :goto_152

    :catch_14d
    move-exception v0

    move-object p0, v0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    :cond_152
    :goto_152
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelResponseTranSched(I)V

    return-void
.end method
