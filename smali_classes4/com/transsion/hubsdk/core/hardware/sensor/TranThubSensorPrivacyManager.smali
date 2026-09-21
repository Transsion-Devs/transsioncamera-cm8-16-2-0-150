.class public Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/sensor/ITranSensorPrivacyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubSensorPrivacyManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$5x9hD1jNOLU7O7WhBjH31vJCokM(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;II)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->lambda$isSensorPrivacyEnabled$0(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e4GLtkYolcGQxSgxoxE-1nBTy-4(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;IZ)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->lambda$setSensorPrivacy$1(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "sensor"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->mService:Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;

    return-void
.end method

.method private synthetic lambda$isSensorPrivacyEnabled$0(II)Ljava/lang/Object;
    .registers 3

    .line 33
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->mService:Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;

    if-eqz p0, :cond_d

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 36
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setSensorPrivacy$1(IZ)Ljava/lang/Object;
    .registers 3

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->mService:Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;

    if-eqz p0, :cond_7

    .line 45
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;->setSensorPrivacy(IZ)V

    .line 47
    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public isSensorPrivacyEnabled(II)Z
    .registers 5

    .line 32
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;II)V

    const-string p0, "sensor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setSensorPrivacy(IZ)V
    .registers 5

    .line 43
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;IZ)V

    const-string p0, "sensor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->TAG:Ljava/lang/String;

    const-string p1, "setSensorPrivacy"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/sensor/TranThubSensorPrivacyManager;->mService:Lcom/transsion/hubsdk/hardware/sensor/ITranSensorPrivacyManager;

    return-void
.end method
