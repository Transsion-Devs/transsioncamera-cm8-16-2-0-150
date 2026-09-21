.class public Lcom/transsion/camera/adapter/platformcamera/OfflineController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;


# instance fields
.field private mTranUsfManager:Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mTranUsfManager:Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;

    .line 20
    const-string p0, "com.transsion.camera.featurelibs.offline.OfflineProcessJniImpl"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_18

    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public static createInstance()V
    .registers 2

    .line 27
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    if-nez v0, :cond_19

    .line 28
    const-class v0, Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    if-nez v1, :cond_15

    .line 30
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;-><init>()V

    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 32
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    :cond_19
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;
    .registers 1

    .line 37
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    if-nez v0, :cond_7

    .line 38
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->createInstance()V

    .line 40
    :cond_7
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->mInstance:Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    return-object v0
.end method


# virtual methods
.method public getAccrueNum()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAccrueTfNum()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCopiedHwBuffer(Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public initOffline()V
    .registers 1

    return-void
.end method

.method public offlineJniHwBuffer(Landroid/hardware/HardwareBuffer;Z)V
    .registers 3

    return-void
.end method

.method public unInitOffline()V
    .registers 1

    return-void
.end method
