.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospInputManager"


# instance fields
.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;


# direct methods
.method public static synthetic $r8$lambda$akiJbCU4f_kuFh8sy9cfg5EYxZk(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V
    .registers 4

    .line 58
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;->handleInputEvent(Landroid/view/InputEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 60
    sget-object p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInputEvent fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_15

    .line 47
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    return-object p0
.end method


# virtual methods
.method public ignoreMultiWindowGesture()Z
    .registers 5

    const/4 v0, 0x0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_29

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreMultiWindowGesture"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 164
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return p0

    .line 168
    :catch_22
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string v1, "ignoreMultiWindowGesture not exist."

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/InputEvent;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "injectInputEvent"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2d

    .line 91
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .registers 7

    .line 53
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "monitorGestureInput"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 56
    new-instance p2, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)V

    invoke-direct {p2, p1, v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;-><init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputMonitor:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    .line 63
    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$TranInputMonitor;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;)V

    return-object p1

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 2

    return-void
.end method

.method public setBackGestureMode(Z)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_23

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBackGestureMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 136
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_25

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBackGestureResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 116
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .registers 5

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1f

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleKeyPanicBehaviorCheck"

    const-class v2, Landroid/view/KeyEvent;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 148
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    .line 152
    :catch_20
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->TAG:Ljava/lang/String;

    const-string p1, "singleKeyPanicBehaviorCheck not exist."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 2

    return-void
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_21

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    const-class v2, Landroid/graphics/Region;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateBackGestureRegion"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 126
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method
