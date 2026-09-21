.class public Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDeviceStateManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;


# direct methods
.method public static synthetic $r8$lambda$B6pgu3Bikq3Xx1_VcjBRmq2r8qM(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->lambda$getCurrentState$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "device_state"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    return-void
.end method

.method private synthetic lambda$getCurrentState$0()Ljava/lang/Object;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    if-eqz p0, :cond_d

    .line 43
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;->getCurrentState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentState()I
    .registers 3

    .line 41
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)V

    const-string p0, "device_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .registers 3

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->mService:Lcom/transsion/hubsdk/hardware/devicestate/ITranDeviceStateManager;

    return-void
.end method

.method public unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
    .registers 2

    return-void
.end method
