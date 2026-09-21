.class public Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranUiModeManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubUiModeManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranUiModeManager;


# direct methods
.method public static synthetic $r8$lambda$kypgO8QB0nrWd_7cXeIQuycuGzk(Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->lambda$setNightModeActivated$0(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "uimode"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->mService:Lcom/transsion/hubsdk/app/ITranUiModeManager;

    return-void
.end method

.method private synthetic lambda$setNightModeActivated$0(Z)Ljava/lang/Object;
    .registers 2

    .line 31
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->mService:Lcom/transsion/hubsdk/app/ITranUiModeManager;

    if-eqz p0, :cond_d

    .line 32
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranUiModeManager;->setNightModeActivated(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 34
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public setNightModeActivated(Z)Z
    .registers 4

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;Z)V

    const-string p0, "uimode"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 36
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightModeActivated result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranUiModeManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->mService:Lcom/transsion/hubsdk/app/ITranUiModeManager;

    return-void
.end method
