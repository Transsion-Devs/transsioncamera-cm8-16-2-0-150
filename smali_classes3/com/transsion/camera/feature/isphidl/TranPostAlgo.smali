.class public Lcom/transsion/camera/feature/isphidl/TranPostAlgo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static CMD_STOP_SERVICE:Ljava/lang/String; = null

.field private static PREFIX_GET_SERVICE_STATUS:Ljava/lang/String; = null

.field private static SERVICE_NAME:Ljava/lang/String; = null

.field private static SERVICE_STATUS_RUNNING:Ljava/lang/String; = null

.field private static final START_SERVICE_TIMEOUT_MS:I = 0x400

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

.field private mStarted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)Lcom/transsion/campostalgo/ICamPostAlgoService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;Lcom/transsion/campostalgo/ICamPostAlgoService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    const-string/jumbo v0, "transsion.campostalgo"

    sput-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->SERVICE_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "ctl.stop"

    sput-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->CMD_STOP_SERVICE:Ljava/lang/String;

    .line 26
    const-string v0, "init.svc."

    sput-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->PREFIX_GET_SERVICE_STATUS:Ljava/lang/String;

    .line 27
    const-string v0, "running"

    sput-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->SERVICE_STATUS_RUNNING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z

    return-void
.end method

.method private connect()Lcom/transsion/campostalgo/ICamPostAlgoService;
    .registers 4

    .line 150
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 151
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 153
    sget-object v2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->SERVICE_NAME:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 156
    new-instance v2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;-><init>(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;Lcom/transsion/camera/feature/isphidl/TranPostAlgo-IA;)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 157
    invoke-static {v0}, Lcom/transsion/campostalgo/ICamPostAlgoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/campostalgo/ICamPostAlgoService;

    move-result-object p0

    return-object p0

    :cond_2f
    return-object v1
.end method

.method private getService(Z)Lcom/transsion/campostalgo/ICamPostAlgoService;
    .registers 9

    .line 202
    const-string v0, "Got the PostAlgo service: "

    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-nez v1, :cond_bc

    const/16 v1, 0x40

    if-eqz p1, :cond_d

    const/16 v2, 0x400

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    shl-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_bc

    .line 205
    sget-object v3, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "Connect to PostAlgo service"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    :try_start_19
    invoke-direct {p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->connect()Lcom/transsion/campostalgo/ICamPostAlgoService;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_3a
    .catchall {:try_start_19 .. :try_end_1f} :catchall_38

    if-eqz v4, :cond_6f

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object p0

    :catchall_38
    move-exception p1

    goto :goto_9e

    :catch_3a
    move-exception v3

    .line 210
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    sget-object v4, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get service error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    .line 213
    iget-object v3, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v3, :cond_6f

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object p0

    :cond_6f
    if-eqz p1, :cond_9a

    .line 220
    :try_start_71
    sget-object v3, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service is not ready, wait for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-long v3, v1

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_90} :catch_91

    goto :goto_9a

    .line 224
    :catch_91
    sget-object p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Interrupted when waiting for service"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_9a
    :goto_9a
    shl-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 213
    :goto_9e
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_bb

    .line 214
    sget-object p1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object p0

    .line 217
    :cond_bb
    throw p1

    .line 229
    :cond_bc
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object p0
.end method

.method private stopService()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v0, :cond_3d

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_d

    .line 167
    const-string v0, "taps_isphidl"

    goto :goto_f

    .line 166
    :cond_d
    const-string v0, "camerapostalgo"

    .line 169
    :goto_f
    sget-object v1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->SERVICE_STATUS_RUNNING:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->PREFIX_GET_SERVICE_STATUS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 170
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 172
    sget-object v1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Stop PostAlgo service"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->CMD_STOP_SERVICE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    :cond_3d
    return-void
.end method


# virtual methods
.method public declared-synchronized flush([J)V
    .registers 8

    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-nez v0, :cond_7

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_7
    :try_start_7
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[flush] + captureInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3b

    .line 82
    :try_start_1d
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_35

    if-eqz p1, :cond_35

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    const/4 v2, 0x0

    .line 83
    aget-wide v4, p1, v2

    long-to-int v2, v4

    aget-wide v3, p1, v3

    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/campostalgo/ICamPostAlgoService;->flush(IJ)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_33
    .catchall {:try_start_1d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    goto :goto_47

    :catch_33
    move-exception p1

    goto :goto_3d

    .line 88
    :cond_35
    :goto_35
    :try_start_35
    const-string p1, "[flush] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    goto :goto_45

    :catchall_3b
    move-exception p1

    goto :goto_4f

    .line 86
    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[flush] RemoteException when disconnect"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_31

    goto :goto_35

    .line 90
    :goto_45
    monitor-exit p0

    return-void

    .line 88
    :goto_47
    :try_start_47
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[flush] -"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    throw p1

    :goto_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_3b

    throw p1
.end method

.method public init(Landroid/content/Context;Z)Z
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->getService(Z)Lcom/transsion/campostalgo/ICamPostAlgoService;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setBatteryState(I)V
    .registers 4

    monitor-enter p0

    .line 64
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setBatteryState] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 66
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_14

    .line 67
    invoke-interface {v1, p1}, Lcom/transsion/campostalgo/ICamPostAlgoService;->setBatteryState(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_12
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p1

    goto :goto_26

    :catch_12
    move-exception p1

    goto :goto_1c

    .line 72
    :cond_14
    :goto_14
    :try_start_14
    const-string p1, "[setBatteryState] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception p1

    goto :goto_2e

    .line 70
    :goto_1c
    :try_start_1c
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setBatteryState] RemoteException when disconnect"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_10

    goto :goto_14

    .line 74
    :goto_24
    monitor-exit p0

    return-void

    .line 72
    :goto_26
    :try_start_26
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setBatteryState] -"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    throw p1

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_1a

    throw p1
.end method

.method public setISPHidlServiceCallback(Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;)V
    .registers 3

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public declared-synchronized setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 137
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setMappingInfo] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 139
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_14

    .line 140
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/campostalgo/ICamPostAlgoService;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_12
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p1

    goto :goto_2a

    :catch_12
    move-exception p1

    goto :goto_1c

    .line 145
    :cond_14
    :goto_14
    :try_start_14
    const-string p1, "[setMappingInfo] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_28

    :catchall_1a
    move-exception p1

    goto :goto_32

    .line 143
    :goto_1c
    :try_start_1c
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[setMappingInfo] RemoteException when config"

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_10

    .line 145
    :try_start_23
    const-string p1, "[setMappingInfo] -"

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_1a

    .line 147
    :goto_28
    monitor-exit p0

    return-void

    .line 145
    :goto_2a
    :try_start_2a
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[setMappingInfo] -"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    throw p1

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_1a

    throw p1
.end method

.method public declared-synchronized setTZCapConfig(JII)V
    .registers 8

    monitor-enter p0

    .line 111
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTZCapConfig] + timeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_39

    .line 113
    :try_start_27
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_33

    .line 114
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/campostalgo/ICamPostAlgoService;->setTZCapConfig(JII)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_31
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    goto :goto_49

    :catch_31
    move-exception p1

    goto :goto_3b

    .line 119
    :cond_33
    :goto_33
    :try_start_33
    const-string p1, "[setTZCapConfig] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_39

    goto :goto_47

    :catchall_39
    move-exception p1

    goto :goto_51

    .line 117
    :goto_3b
    :try_start_3b
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[setTZCapConfig] RemoteException when config"

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_2f

    .line 119
    :try_start_42
    const-string p1, "[setTZCapConfig] -"

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_39

    .line 121
    :goto_47
    monitor-exit p0

    return-void

    .line 119
    :goto_49
    :try_start_49
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[setTZCapConfig] -"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    throw p1

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_39

    throw p1
.end method

.method public declared-synchronized setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)V
    .registers 4

    monitor-enter p0

    .line 124
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setTZCaptureCallback] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 126
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_14

    .line 127
    invoke-interface {v1, p1}, Lcom/transsion/campostalgo/ICamPostAlgoService;->setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_12
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p1

    goto :goto_26

    :catch_12
    move-exception p1

    goto :goto_1c

    .line 132
    :cond_14
    :goto_14
    :try_start_14
    const-string p1, "[setTZCaptureCallback] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception p1

    goto :goto_2e

    .line 130
    :goto_1c
    :try_start_1c
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setTZCaptureCallback] RemoteException when config"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_10

    goto :goto_14

    .line 134
    :goto_24
    monitor-exit p0

    return-void

    .line 132
    :goto_26
    :try_start_26
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setTZCaptureCallback] -"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    throw p1

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_1a

    throw p1
.end method

.method public declared-synchronized start([Lcom/transsion/campostalgo/FeatureConfig;Lcom/transsion/campostalgo/ICamPostAlgoCallback;)Lcom/transsion/campostalgo/FeatureResult;
    .registers 5

    monitor-enter p0

    .line 48
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[start] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 50
    :try_start_8
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_20

    .line 51
    invoke-interface {v1, p1, p2}, Lcom/transsion/campostalgo/ICamPostAlgoService;->configStream([Lcom/transsion/campostalgo/FeatureConfig;Lcom/transsion/campostalgo/ICamPostAlgoCallback;)Lcom/transsion/campostalgo/FeatureResult;

    move-result-object p1

    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_13} :catch_1e
    .catchall {:try_start_8 .. :try_end_13} :catchall_1c

    .line 58
    :try_start_13
    const-string p2, "[start] -"

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    .line 53
    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_3d

    :catchall_1c
    move-exception p1

    goto :goto_35

    :catch_1e
    move-exception p1

    goto :goto_26

    .line 58
    :cond_20
    :try_start_20
    const-string p1, "[start] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1a

    goto :goto_32

    .line 56
    :goto_26
    :try_start_26
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[start] Exception when config"

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_1c

    .line 58
    :try_start_2d
    const-string p1, "[start] -"

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_1a

    .line 60
    :goto_32
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :goto_35
    :try_start_35
    sget-object p2, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[start] -"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    throw p1

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_1a

    throw p1
.end method

.method public declared-synchronized stop(I)V
    .registers 5

    monitor-enter p0

    .line 93
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-nez v0, :cond_7

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_7
    :try_start_7
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stop] + type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_32

    const/4 v1, 0x0

    .line 98
    :try_start_1e
    iget-object v2, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mService:Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v2, :cond_2a

    .line 99
    invoke-interface {v2, p1}, Lcom/transsion/campostalgo/ICamPostAlgoService;->disconnect(I)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_28
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    goto :goto_40

    :catch_28
    move-exception p1

    goto :goto_34

    .line 104
    :cond_2a
    :goto_2a
    :try_start_2a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z

    .line 105
    :goto_2c
    const-string p1, "[stop] -"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_3e

    :catchall_32
    move-exception p1

    goto :goto_4a

    .line 102
    :goto_34
    :try_start_34
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[stop] RemoteException when disconnect"

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_26

    .line 104
    :try_start_3b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_32

    goto :goto_2c

    .line 107
    :goto_3e
    monitor-exit p0

    return-void

    .line 104
    :goto_40
    :try_start_40
    iput-boolean v1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mStarted:Z

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[stop] -"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    throw p1

    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_32

    throw p1
.end method

.method public supportService()Z
    .registers 2

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->getService(Z)Lcom/transsion/campostalgo/ICamPostAlgoService;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method public unInit()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->stopService()V

    return-void
.end method
