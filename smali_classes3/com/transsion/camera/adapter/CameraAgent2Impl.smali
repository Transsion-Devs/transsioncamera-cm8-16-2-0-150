.class Lcom/transsion/camera/adapter/CameraAgent2Impl;
.super Lcom/transsion/camera/adapter/CameraAgent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mAvailabilityHandler:Landroid/os/Handler;

.field private mAvailabilityThread:Landroid/os/HandlerThread;

.field private mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private final mReOpenRunnable:Ljava/lang/Runnable;

.field private final mUnavailableList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$DL7jwNkCdbvgelMdpjsPBos2-H4(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xauHk6WsCF3YUwDmv9RE0M5AOk0(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailabilityCallback(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailabilityThread(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/HandlerThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mReOpenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;Landroid/os/Handler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAvailabilityThread(Lcom/transsion/camera/adapter/CameraAgent2Impl;Landroid/os/HandlerThread;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddUnavailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->addUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCameraAvailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->checkCameraAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveUnavailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->removeUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smconvertCameraStateErrorCode(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->convertCameraStateErrorCode(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Camera2AgentImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 161
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mReOpenRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mContext:Landroid/content/Context;

    .line 52
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 53
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;

    const-string v0, "initDeviceInfo"

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private addUnavailable(Ljava/lang/String;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private checkCameraAvailable(Ljava/lang/String;)Z
    .registers 5

    .line 157
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static convertCameraStateErrorCode(I)I
    .registers 4

    .line 436
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice$StateCallback error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2b

    const/4 p0, 0x0

    return p0

    :cond_2b
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 167
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do ReOpenRunnable in RequestHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->setPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    if-eqz v0, :cond_27

    .line 171
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 5

    .line 162
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 163
    :try_start_3
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do ReOpenRunnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_33

    .line 165
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->removeUnavailable(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_35

    .line 175
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_31

    throw p0
.end method

.method private removeUnavailable(Ljava/lang/String;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    if-nez v1, :cond_2a

    .line 80
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_2a

    :catchall_d
    move-exception p0

    goto :goto_2e

    :catch_f
    move-exception v1

    .line 82
    :try_start_10
    sget-object v2, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCameraDeviceInfo] error Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    monitor-exit v0

    return-object p0

    .line 86
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_d

    throw p0
.end method

.method onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    .registers 3

    .line 109
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    return-object v0
.end method

.method public reInitFirstForPermission()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    if-eqz v0, :cond_2e

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->reloadCharacteristics(Landroid/hardware/camera2/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 98
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "reInitFirst start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst()V

    .line 100
    const-string v2, "reInitFirst end"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 103
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    return-void
.end method

.method public setPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 5

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 466
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingOpenCustomer: customer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
