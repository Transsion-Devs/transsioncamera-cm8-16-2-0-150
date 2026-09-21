.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubInputManager"


# instance fields
.field private mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

.field private mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

.field private mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

.field private mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;


# direct methods
.method public static synthetic $r8$lambda$0TtXSmRFl_TPUwir21GYY93hnoE(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$unregisterStylusKeyListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5mDoMbO-0d9ySgz-t23eXQOFiYQ(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$updateBackGestureRegion$3(Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AywURehnYiA5R_48eNLIRxJS-lI(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$registerStylusKeyListener$0(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DK9M_WkiS-sxjImi35VfKToQ_Mw(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$singleKeyPanicBehaviorCheck$6(Landroid/view/KeyEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UR2gafAaDryx26KjkxWCB77jtl8(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$ignoreMultiWindowGesture$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZLldExHt2uQMzE4nW9qTwRcfqHg(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$setBackGestureMode$4(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s2e2ncZJJXx0r6KgCX7ptV8c938(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->lambda$setBackGestureResult$2(Landroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "input"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/view/ITranInputMonitor;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    return-object p0
.end method

.method private getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranInputManager;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/hardware/input/TranInputManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    .line 86
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTranInputManager:Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    return-object p0
.end method

.method private synthetic lambda$ignoreMultiWindowGesture$5()Ljava/lang/Object;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_d

    .line 195
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->ignoreMultiWindowGesture()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 197
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$registerStylusKeyListener$0(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_c

    .line 133
    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->registerStylusKeyListener(Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBackGestureMode$4(Z)Ljava/lang/Object;
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_7

    .line 184
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->setBackGestureMode(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBackGestureResult$2(Landroid/os/IBinder;Z)Ljava/lang/Object;
    .registers 3

    .line 157
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_7

    .line 158
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->setBackGestureResult(Landroid/os/IBinder;Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$singleKeyPanicBehaviorCheck$6(Landroid/view/KeyEvent;)Ljava/lang/Object;
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_7

    .line 223
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterStylusKeyListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)Ljava/lang/Object;
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_c

    .line 144
    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->unregisterStylusKeyListener(Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$updateBackGestureRegion$3(Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;
    .registers 3

    .line 170
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz p0, :cond_7

    .line 171
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ignoreMultiWindowGesture()Z
    .registers 3

    .line 193
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranInputManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/TranInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 60
    :try_start_5
    iput-object p3, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    if-eqz p3, :cond_11

    .line 63
    new-instance p3, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;

    invoke-direct {p3, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V

    goto :goto_12

    :catch_f
    move-exception p0

    goto :goto_22

    :cond_11
    move-object p3, v1

    .line 65
    :goto_12
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    if-eqz p1, :cond_38

    .line 67
    new-instance p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_21} :catch_f

    return-object p1

    .line 70
    :goto_22
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "monitorGestureInput:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v1
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 4

    .line 131
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "registerStylusKeyListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackGestureMode(Z)V
    .registers 4

    .line 179
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 182
    :cond_7
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Z)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .registers 5

    .line 153
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Z)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/input/ITranInputManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    return-void
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .registers 4

    .line 221
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/view/KeyEvent;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 4

    .line 142
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterStylusKeyListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 5

    .line 166
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 169
    :cond_7
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)V

    const-string p0, "input"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
