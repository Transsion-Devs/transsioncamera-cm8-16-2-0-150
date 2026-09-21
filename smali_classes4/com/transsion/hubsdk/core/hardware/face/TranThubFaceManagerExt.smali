.class public Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubFaceManagerExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

.field private mTranFaceManager:Lcom/transsion/hubsdk/hardware/face/TranFaceManager;


# direct methods
.method public static synthetic $r8$lambda$3FTbWyON1ubypBqil1qX-ITYNWU(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)Ljava/lang/Object;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->lambda$authenticate$0(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rnMkC0CgwZaoUR5aPrYv1iBeVOg(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->lambda$hasEnrolledTemplates$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "face_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/face/ITranFaceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    return-void
.end method

.method private getTranFaceManager()Lcom/transsion/hubsdk/hardware/face/TranFaceManager;
    .registers 3

    .line 104
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mTranFaceManager:Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    if-nez v0, :cond_13

    .line 106
    new-instance v0, Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/hardware/face/TranFaceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mTranFaceManager:Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    .line 108
    :cond_13
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mTranFaceManager:Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    return-object p0
.end method

.method private synthetic lambda$authenticate$0(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)Ljava/lang/Object;
    .registers 6

    .line 80
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->getTranFaceManager()Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/hardware/face/TranFaceManager;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$hasEnrolledTemplates$1()Ljava/lang/Object;
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->getTranFaceManager()Lcom/transsion/hubsdk/hardware/face/TranFaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/hardware/face/TranFaceManager;->hasEnrolledTemplates()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 13

    .line 43
    new-instance v3, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$1;

    invoke-direct {v3, p0, p2}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$1;-><init>(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;)V

    .line 79
    new-instance p2, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p2}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)V

    const-string p0, "face_manager"

    invoke-virtual {p2, v0, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->TAG:Ljava/lang/String;

    const-string p1, "authenticate"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasEnrolledTemplates()Z
    .registers 3

    .line 89
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;)V

    const-string p0, "face_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 90
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->TAG:Ljava/lang/String;

    const-string v1, "hasEnrolledTemplates"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->mService:Lcom/transsion/hubsdk/hardware/face/ITranFaceManager;

    return-void
.end method
