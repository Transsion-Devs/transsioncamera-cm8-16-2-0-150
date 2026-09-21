.class public Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAppmCallbackWrapper"

.field private static final TRAN_APPM_SERVICE:Ljava/lang/String; = "tran_appm"

.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    .line 26
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->sServiceManager:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 29
    const-string v0, "TranAospAppmCallbackWrapper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_5
    sget-object v1, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->sServiceManager:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->sServiceManager:Ljava/lang/Class;

    const-string v3, "getService"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    const-string v3, "tran_appm"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_2f

    .line 35
    const-string p0, "get TranAppmService failed !!"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2d
    move-exception p0

    goto :goto_3d

    .line 38
    :cond_2f
    invoke-static {v1}, Lcom/transsion/appm/ITranAppmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/appm/ITranAppmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    if-nez v1, :cond_3c

    .line 40
    const-string p0, "can not get TranAppmService !!"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_2d

    :cond_3c
    return-void

    .line 43
    :goto_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get TranAppmService fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method

.method private getService()Ljava/lang/Object;
    .registers 4

    .line 188
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    .line 190
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getServiceIBinder"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 192
    const-string v1, "appm_service"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 193
    const-string v1, "com.transsion.hubsdk.appm.ITranAppmManager$Stub"

    invoke-static {v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p0, :cond_42

    if-eqz v1, :cond_42

    .line 195
    const-class v0, Landroid/os/IBinder;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "asInterface"

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_42
    return-object v0
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 118
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v0, "TranAospAppmCallbackWrapper"

    const-string v1, "unkown"

    if-nez p0, :cond_e

    .line 119
    const-string p0, "getPolicyVersion failed(get AppmService failed)!!"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 123
    :cond_e
    :try_start_e
    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getRecentFpsAvg(I)F
    .registers 5

    .line 157
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->getService()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRecentFpsAvg"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_2b
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 132
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v0, "TranAospAppmCallbackWrapper"

    if-nez p0, :cond_c

    .line 133
    const-string p0, "notifyClient failed(get AppmService failed)!!"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_c
    :try_start_c
    invoke-interface {p0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_c

    .line 63
    const-string p0, "registerAppmCallback failed(get AppmService failed)!!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 69
    new-instance p1, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;-><init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->setTranAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V

    .line 85
    sget-object v2, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :try_start_22
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v0, "TranAospAppmCallbackWrapper"

    if-nez p0, :cond_c

    .line 50
    const-string p0, "sendEvent failed(get AppmService failed)!!"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_c
    :try_start_c
    invoke-interface {p0, p1, p2}, Lcom/transsion/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFpsMonitorSwitch(IZLjava/lang/String;)Z
    .registers 8

    .line 145
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->getService()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setFpsMonitorSwitch"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 149
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    const-string v1, "TranAospAppmCallbackWrapper"

    if-nez v0, :cond_c

    .line 97
    const-string p0, "unregisterAppmCallback failed, can not get TranAppmService !!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_c
    sget-object v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;

    .line 101
    invoke-virtual {v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 102
    invoke-virtual {v2}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->getTranAppmCallback()Lcom/transsion/appm/ITranAppmCallback;

    move-result-object p1

    .line 104
    :try_start_2c
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->mTranAppmManager:Lcom/transsion/appm/ITranAppmManager;

    invoke-interface {p0, p1}, Lcom/transsion/appm/ITranAppmManager;->unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_3a
    sget-object p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method
