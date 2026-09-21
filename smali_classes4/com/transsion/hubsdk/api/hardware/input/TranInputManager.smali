.class public Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;
    .registers 2

    .line 89
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 90
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    :cond_11
    return-object p1

    .line 92
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    :cond_1d
    return-object p1
.end method

.method public ignoreMultiWindowGesture()Z
    .registers 2

    .line 165
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->ignoreMultiWindowGesture()Z

    move-result p0

    return p0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .registers 5

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    return-void

    .line 104
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerStylusKeyListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackGestureMode(Z)V
    .registers 3

    .line 151
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->setBackGestureMode(Z)V

    return-void
.end method

.method public setBackGestureResult(Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->setBackGestureResult(Landroid/os/IBinder;Z)V

    return-void

    .line 129
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameter inputChannelToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
    .registers 3

    .line 156
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 159
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 118
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V

    return-void

    .line 116
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterStylusKeyListener() parameter listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 143
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void

    .line 141
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameters must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
