.class public Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/window/ITranDisplayRotationAdapter;


# instance fields
.field private mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;


# direct methods
.method public static synthetic $r8$lambda$tEHxRdaLFrYZTYSNUttMsWJPgGg(Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->lambda$onNotifySaveRotation$0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "display_rotation"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/transsion/hubsdk/window/ITranDisplayRotationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    return-void
.end method

.method private synthetic lambda$onNotifySaveRotation$0(I)Ljava/lang/Object;
    .registers 2

    .line 26
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;->mDisplayRotationManager:Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;

    if-eqz p0, :cond_7

    .line 27
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/window/ITranDisplayRotationManager;->onNotifySaveRotation(I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onNotifySaveRotation(I)V
    .registers 4

    .line 22
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 25
    :cond_7
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;I)V

    const-string p0, "display_rotation"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
