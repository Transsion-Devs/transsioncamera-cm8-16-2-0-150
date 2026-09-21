.class public Lcom/transsion/camera/feature/tzservice/TZService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/tzservice/TZService$PhoneWorkingStateType;,
        Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;,
        Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;,
        Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;,
        Lcom/transsion/camera/feature/tzservice/TZService$ICommonCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TZService"

.field private static final TZ_SERVICE_NAME:Ljava/lang/String; = "vendor.transsion.hardware.camera.tzservice.ITZService/default"

.field private static mTZServiceBinder:Landroid/os/IBinder;


# instance fields
.field private final mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;


# direct methods
.method private constructor <init>(Lvendor/transsion/hardware/camera/tzservice/ITZService;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    return-void
.end method

.method public static getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/tzservice/TZService;
    .registers 2

    .line 65
    const-string/jumbo p0, "vendor.transsion.hardware.camera.tzservice.ITZService/default"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZServiceBinder:Landroid/os/IBinder;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_d
    new-instance p1, Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-static {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/transsion/hardware/camera/tzservice/ITZService;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/tzservice/TZService;-><init>(Lvendor/transsion/hardware/camera/tzservice/ITZService;)V

    return-object p1
.end method

.method public static getShareMemoryFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 240
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShareMemoryFileDescriptor: fd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 237
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "memoryFile is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getShareMemoryFileDescriptor(Landroid/os/SharedMemory;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    if-eqz p0, :cond_1d

    .line 230
    invoke-virtual {p0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShareMemoryFileDescriptor: pfd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 228
    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "sharedMemory is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOffPeakModeSupportCfg()[I
    .registers 3

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->getOffPeakModeSupportCfg()[I

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOffPeakModeSupportCfg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TZService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 223
    new-array p0, p0, [I

    return-object p0
.end method

.method public linkToDeath(Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;I)V
    .registers 5

    .line 80
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZServiceBinder:Landroid/os/IBinder;

    new-instance v1, Lcom/transsion/camera/feature/tzservice/TZService$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/tzservice/TZService$1;-><init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "linkToDeath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAppIOOperationStart(II)V
    .registers 3

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p0, p1, p2}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setAppIOOperationStart(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAppIOOperationStart: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBatteryState(I)V
    .registers 3

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setPhoneWorkingState(II)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBatteryState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 203
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setMappingInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScreenState(I)V
    .registers 3

    .line 195
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setPhoneWorkingState(II)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScreenState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTZCapConfig(JII)V
    .registers 5

    .line 179
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setTZCapConfig(JII)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setTZCapConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTZCaptureCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V
    .registers 5

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p1}, Lcom/transsion/camera/feature/tzservice/TZService$ICommonCallback;->getAppUserID()I

    move-result v1

    new-instance v2, Lcom/transsion/camera/feature/tzservice/TZService$2;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/tzservice/TZService$2;-><init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V

    invoke-interface {v0, v1, v2}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setTZCaptureCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTZCaptureCallback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTZCaptureJpegCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V
    .registers 5

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZService;->mTZService:Lvendor/transsion/hardware/camera/tzservice/ITZService;

    invoke-interface {p1}, Lcom/transsion/camera/feature/tzservice/TZService$ICommonCallback;->getAppUserID()I

    move-result v1

    new-instance v2, Lcom/transsion/camera/feature/tzservice/TZService$3;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/tzservice/TZService$3;-><init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V

    invoke-interface {v0, v1, v2}, Lvendor/transsion/hardware/camera/tzservice/ITZService;->setTZCaptureJpegCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTZCaptureJpegCallback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TZService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
