.class public Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubInputMethodManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;


# direct methods
.method public static synthetic $r8$lambda$-6i3kAX3UaE6G33ByI63oZUMQZE(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$hideAllInputMethod$4(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9hCurwDXbHc-V9X0uxyUGI7jMGc(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$switchTranInputMethod$3(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DwxBNDHb-ZyVlBG39CWnPD1kE1w(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$commitConnectKeyAndText$0(Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LNmqFbecc_Bl8LkIvT88yzjOVdk(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$unregisterGlobalWritingListener$2(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VlBkxwpLYLTqY6F_jZKi14o0EjA(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$registerGlobalWritingListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "input_method_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    return-void
.end method

.method private synthetic lambda$commitConnectKeyAndText$0(Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 73
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_7

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$hideAllInputMethod$4(II)Ljava/lang/Object;
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_7

    .line 153
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->hideAllInputMethod(II)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerGlobalWritingListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz v0, :cond_c

    .line 86
    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->registerGlobalWritingListener(Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$switchTranInputMethod$3(Z)Ljava/lang/Object;
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_7

    .line 129
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->switchTranInputMethod(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterGlobalWritingListener$2(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz v0, :cond_c

    .line 97
    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->unregisterGlobalWritingListener(Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener;)V

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 5

    .line 72
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "commitConnectKeyAndText sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public freeSoftInputViewsLeaks(Landroid/content/Context;Landroid/view/Window;)V
    .registers 7

    .line 46
    const-string p0, "input_method"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_b

    goto :goto_4d

    .line 50
    :cond_b
    const-string p1, "mServedView"

    const-string v0, "mNextServedView"

    const-string v1, "mLastSrvView"

    const-string v2, "mCurRootView"

    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_18
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4d

    .line 51
    aget-object v1, p1, v0

    .line 53
    :try_start_1d
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    :cond_2d
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_36

    goto :goto_4a

    .line 61
    :cond_36
    check-cast v2, Landroid/view/View;

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_4d
    :goto_4d
    return-void
.end method

.method public hideAllInputMethod(II)V
    .registers 5

    .line 151
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public hideSoftInputMethodByPrivilegeUser()V
    .registers 4

    .line 163
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_1f

    .line 165
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->hideSoftInputMethodByPrivilegeUser()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 167
    sget-object v0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSoftInputMethodByPrivilegeUser fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public registerGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .registers 4

    .line 84
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "registerGlobalWritingListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    return-void
.end method

.method public switchTranInputMethod(Z)V
    .registers 4

    .line 127
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "switchTranInputMethod sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .registers 4

    .line 95
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterGlobalWritingListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSecurityInputBlackList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_1f

    .line 141
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->updateSecurityInputBlackList(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 143
    sget-object p1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSecurityInputBlackList fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method
