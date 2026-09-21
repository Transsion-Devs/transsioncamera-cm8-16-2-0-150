.class public abstract Lcom/transsion/camera/adapter/CameraAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;,
        Lcom/transsion/camera/adapter/CameraAgent$Customer;,
        Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;
    }
.end annotation


# instance fields
.field private mCameraProxyCreatorMap:Ljava/util/Map;

.field protected mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field protected mIsPause:Z

.field protected mOfflineSessionHandler:Landroid/os/Handler;

.field private mOfflineSessionThread:Landroid/os/HandlerThread;

.field protected mOpenDoubleDevice:Z

.field protected mRequestHandler:Landroid/os/Handler;

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mRespondThread:Landroid/os/HandlerThread;

.field protected mResponseHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mIsPause:Z

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Request_Camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response_Camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OfflineSession_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionThread:Landroid/os/HandlerThread;

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;->startThread()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionHandler:Landroid/os/Handler;

    return-void
.end method

.method private startThread()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOfflineSessionThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized closeCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 4

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    if-nez p1, :cond_d

    .line 125
    monitor-exit p0

    return-void

    .line 127
    :cond_d
    :try_start_d
    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->-$$Nest$mcloseCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 128
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public abstract getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
.end method

.method protected declared-synchronized getCameraProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    .registers 3

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getRequestThread()Landroid/os/HandlerThread;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method abstract onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.end method

.method public declared-synchronized openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 5

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;

    if-nez v0, :cond_17

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent;->onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_1f

    .line 110
    :cond_17
    :goto_17
    invoke-virtual {p2, p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->setCameraId(Ljava/lang/String;)V

    .line 111
    invoke-static {v0, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->-$$Nest$mopenCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_15

    .line 112
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    throw p1
.end method

.method public abstract reInitFirstForPermission()V
.end method

.method public declared-synchronized releaseCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 4

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    if-nez p1, :cond_d

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_d
    :try_start_d
    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->-$$Nest$mreleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 120
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public setOpenDoubleDevice(Z)V
    .registers 2

    .line 143
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    return-void
.end method

.method public setPause(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mIsPause:Z

    return-void
.end method
