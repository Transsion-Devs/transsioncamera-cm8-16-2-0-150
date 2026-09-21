.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.super Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2ProxyCreatorImpl"
.end annotation


# instance fields
.field private final MAX_WAIT_TIME:I

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private mDeviceInfoError:Z

.field private final mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method public static synthetic $r8$lambda$f_iDGoyJlVWKLzU4gctGOy7PpOc()V
    .registers 2

    .line 226
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setResponseTranSched(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraUser(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateWait(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraProxy(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceInfoError(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoCloseCurrent(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCurrent()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .registers 5

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;-><init>(Lcom/transsion/camera/adapter/CameraAgent;Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    const/16 p1, 0x2710

    .line 183
    iput p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->MAX_WAIT_TIME:I

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 341
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 189
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraAPI2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private doCloseCurrent()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v1, v0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-eqz v1, :cond_e

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v0, :cond_44

    .line 290
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void

    .line 293
    :cond_e
    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_44

    .line 294
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 296
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCloseCurrent cameraProxyCreator is null, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_3d
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    :cond_44
    return-void
.end method


# virtual methods
.method doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 8

    .line 307
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    const/4 v3, 0x0

    if-nez v2, :cond_65

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eq v2, p1, :cond_65

    .line 310
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCloseCamera only the user can close, mCurrentUser: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cb: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , mPendingOpenCustomer: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v1, p1, Lcom/transsion/camera/adapter/CameraAgent;->mIsPause:Z

    if-eqz v1, :cond_63

    .line 312
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0, v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fputmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    goto :goto_63

    :catchall_61
    move-exception p0

    goto :goto_d3

    .line 315
    :cond_63
    :goto_63
    monitor-exit v0

    return-void

    .line 317
    :cond_65
    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->setPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_71

    .line 321
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->release()V

    .line 322
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 324
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCloseCamera] device close start, mCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mCameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_a4

    .line 327
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 328
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iput-object v3, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 331
    :cond_a4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCloseCamera] device close end, process time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz p1, :cond_d1

    .line 335
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceClosed(Ljava/lang/String;)V

    .line 336
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 338
    :cond_d1
    monitor-exit v0

    return-void

    :goto_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_61

    throw p0
.end method

.method doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 7

    .line 199
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-nez v2, :cond_4c

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_4c

    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->isPriority(Lcom/transsion/camera/adapter/CameraAgent$Customer;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 201
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentUser.isPriority(user), mCurrentUser Priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", open user Priority:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-interface {p1, p0, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 204
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    goto/16 :goto_1b5

    .line 207
    :cond_4c
    const-string v1, "doOpenCamera"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCurrent()V

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$mcheckCameraAvailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)Z

    move-result v1

    .line 212
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOpenCamera checkCameraAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_bf

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->setPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->setCameraId(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_bf
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setCamTranSched(I)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d8

    .line 225
    new-instance v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_d8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/16 v1, 0x9

    if-nez p1, :cond_16c

    .line 230
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "mCameraProxy == null"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_3 .. :try_end_e7} :catchall_49

    .line 232
    :try_start_e7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 233
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraManager(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 237
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera waitState."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    .line 239
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera waitState done."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_11f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e7 .. :try_end_11f} :catch_124
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e7 .. :try_end_11f} :catch_122
    .catch Ljava/lang/InterruptedException; {:try_start_e7 .. :try_end_11f} :catch_120
    .catch Ljava/lang/SecurityException; {:try_start_e7 .. :try_end_11f} :catch_120
    .catchall {:try_start_e7 .. :try_end_11f} :catchall_49

    goto :goto_16c

    :catch_120
    move-exception p1

    goto :goto_126

    :catch_122
    move-exception p1

    goto :goto_12a

    :catch_124
    move-exception p1

    goto :goto_152

    .line 246
    :goto_126
    :try_start_126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16c

    .line 243
    :goto_12a
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$smconvertCameraStateErrorCode(I)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    goto :goto_16c

    .line 241
    :goto_152
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    :cond_16c
    :goto_16c
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    if-eqz p1, :cond_194

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_184

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object p0, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 255
    :cond_184
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelCamTranSched(I)V

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 257
    monitor-exit v0

    goto :goto_1b4

    .line 260
    :cond_194
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_1b0

    .line 261
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceOpened(Lcom/transsion/camera/adapter/CameraProxy;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, " mCurrentUser. update"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object p0, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 265
    :cond_1b0
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 266
    monitor-exit v0

    :goto_1b4
    return-void

    :goto_1b5
    monitor-exit v0
    :try_end_1b6
    .catchall {:try_start_126 .. :try_end_1b6} :catchall_49

    throw p0
.end method

.method doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 6

    .line 271
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-nez v2, :cond_35

    iget-object v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eq v2, p1, :cond_35

    .line 274
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReleaseCamera only the user can close, mCurrentUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cb: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    goto :goto_5c

    :cond_35
    const/4 p1, 0x0

    .line 278
    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->setPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReleaseCamera, mCameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz v1, :cond_5a

    .line 281
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->release()V

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 284
    :cond_5a
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_33

    throw p0
.end method
