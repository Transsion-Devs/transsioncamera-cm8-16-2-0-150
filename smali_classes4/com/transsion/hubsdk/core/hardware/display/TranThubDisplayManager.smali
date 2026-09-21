.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;,
        Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$DisplayEvent;
    }
.end annotation


# static fields
.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final EVENT_FLAG_DISPLAY_ADDED:J = 0x1L

.field public static final EVENT_FLAG_DISPLAY_CHANGED:J = 0x4L

.field public static final EVENT_FLAG_DISPLAY_REMOVED:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "TranThubDisplayManager"

.field private static sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# instance fields
.field private mArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

.field protected final mDualDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDualRegisteredEventsMask:J

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;


# direct methods
.method public static synthetic $r8$lambda$08AyezaEIG79jCg15263uBR2tzo(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getForcedUsingDisplayMode$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EsdK6Aukx7h9K0djoLGdiDZZ694(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getSourceConnectFlag$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LltmuvkR9jbabUjbujDurYb6uP8(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$openDualDisplayForSelfie$3(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g0scw6WqGtJvTq4C6IOYgRBFJBk(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    new-instance p2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    invoke-direct {p2, p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$g2Y6YIRL9dp3MTx8wnh9vomYEZM(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$setTranAutoBrightnessTemporarily$6(IZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i8V9T17mX22srvZSdXoAn8LZsx0(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$isDualDisplayForSelfie$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nFi1T8Mh4zG_ttrwOJvBpSr3954(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$getCurSelfieDisplayId$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qgmVy3j8YUXM8ri-2HH9-ZIfZUo(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->lambda$closeDualDisplayForSelfie$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    .line 595
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    .line 76
    const-string v0, "display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 225
    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    iget-object v2, v2, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
    .registers 2

    const-class v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    if-nez v1, :cond_11

    .line 83
    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 85
    :cond_11
    :goto_11
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->sInstance:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private static getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 2

    if-eqz p0, :cond_7

    .line 152
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_b
    if-nez p0, :cond_11

    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :cond_11
    if-eqz p0, :cond_14

    return-object p0

    .line 157
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not get Looper for the UI thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$closeDualDisplayForSelfie$2()Ljava/lang/Object;
    .registers 1

    .line 438
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_7

    .line 439
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->closeDualDisplayForSelfie()V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCurSelfieDisplayId$5()Ljava/lang/Object;
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_d

    .line 471
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getCurSelfieDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getForcedUsingDisplayMode$0()Ljava/lang/Object;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_d

    .line 334
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getForcedUsingDisplayMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 336
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getSourceConnectFlag$1()Ljava/lang/Object;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_d

    .line 346
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getSourceConnectFlag()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 348
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isDualDisplayForSelfie$4()Ljava/lang/Object;
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_d

    .line 459
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->isDualDisplayForSelfie()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 461
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$openDualDisplayForSelfie$3(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 448
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_7

    .line 449
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->openDualDisplayForSelfie(Landroid/os/Bundle;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setTranAutoBrightnessTemporarily$6(IZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 533
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_7

    .line 534
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerDualCallbackIfNeededLocked()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    if-nez v0, :cond_f

    .line 234
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$1;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    .line 235
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    :cond_f
    return-void
.end method

.method private updateDualCallbackIfNeededLocked()V
    .registers 7

    .line 241
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    int-to-long v2, v2

    .line 243
    iget-object v4, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    iget-wide v4, v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    or-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    int-to-long v0, v2

    .line 245
    iget-wide v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_31

    .line 247
    :try_start_21
    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    iget-object v3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mCallback:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;

    invoke-interface {v2, v3, v0, v1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerDualCallbackWithEventMask(Lcom/transsion/hubsdk/hardware/display/ITranDisplayManagerCallback;J)V

    .line 248
    iput-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualRegisteredEventsMask:J
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    .line 250
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_31
    return-void
.end method


# virtual methods
.method public addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 319
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 323
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 325
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public closeDualDisplay()V
    .registers 2

    .line 373
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 376
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 380
    :cond_c
    :try_start_c
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->closeDualDisplay()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 382
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public closeDualDisplayForSelfie()V
    .registers 3

    .line 437
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 693
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 696
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 700
    :cond_c
    :try_start_c
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    .line 702
    :catch_10
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "executeSmartbuttonFunction fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurSelfieDisplayId()I
    .registers 3

    .line 469
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 475
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurSelfieDisplayId"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getForcedUsingDisplayMode()I
    .registers 4

    .line 332
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 338
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getForcedUsingDisplayMode result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSecondaryDisplayId()I
    .registers 5

    .line 110
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 115
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->getSecondaryDisplayId()I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 117
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecondaryDisplayId : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getSourceConnectFlag()I
    .registers 4

    .line 344
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 350
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceConnectFlag result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public handleDualDisplayEvent(II)V
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    .line 166
    iget-object v3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->sendDualDisplayEvent(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 168
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public isDualDisplayForSelfie()Z
    .registers 3

    .line 457
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 463
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "isDualDisplayForSelfie"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isTentMode()Z
    .registers 3

    .line 422
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 425
    :cond_8
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_d

    return v1

    .line 429
    :cond_d
    :try_start_d
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->isTentMode()Z

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    .line 431
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public openDualDisplay()V
    .registers 3

    .line 357
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 364
    :cond_c
    :try_start_c
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "openDualDisplay: 1"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->openDualDisplay()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 367
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public openDualDisplayForSelfie(Landroid/os/Bundle;)V
    .registers 4

    .line 447
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Landroid/os/Bundle;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
    .registers 8

    .line 267
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_3f

    .line 282
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_11
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I

    move-result v1

    const-wide/16 v2, 0x7

    if-gez v1, :cond_2d

    .line 285
    invoke-static {p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object p2

    .line 286
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-direct {v4, p1, p2, v2, v3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;-><init>(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Looper;J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->registerDualCallbackIfNeededLocked()V

    goto :goto_38

    :catchall_2b
    move-exception p0

    goto :goto_3d

    .line 289
    :cond_2d
    iget-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    invoke-virtual {p1, v2, v3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->setEventsMask(J)V

    .line 291
    :goto_38
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    .line 292
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_2b

    throw p0

    .line 277
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .registers 4

    .line 501
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 504
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 507
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V

    .line 509
    :try_start_11
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerFlexButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranFlexButtonCallback;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    .line 511
    :catch_17
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;

    const/4 v0, 0x0

    .line 602
    :try_start_e
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz p0, :cond_19

    .line 603
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerPowerStateChangedCallback(Lcom/transsion/hubsdk/hardware/display/ITranPowerStateChangedCallback;Ljava/lang/String;)Z

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return v0

    .line 606
    :goto_1a
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPowerStateChangedCallback fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .registers 4

    .line 627
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 630
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 633
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V

    .line 635
    :try_start_11
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerShoulderButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    .line 637
    :catch_17
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .registers 4

    .line 566
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 569
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 572
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V

    .line 574
    :try_start_11
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerSmartButtonCallback(Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    .line 576
    :catch_17
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "registerSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .registers 4

    .line 390
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 397
    :cond_c
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V

    .line 399
    :try_start_11
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->registerTentModeCallback(Lcom/transsion/hubsdk/hardware/display/ITranTentModeCallback;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 401
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setBrightness(IF)V
    .registers 4

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 104
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBrightness : e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    return-void
.end method

.method public setTemporaryBrightness(IF)V
    .registers 4

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 95
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTemporaryBrightness: e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
    .registers 6

    .line 532
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)V

    const-string p0, "display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 615
    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-eqz v1, :cond_11

    .line 616
    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unRegisterPowerStateChangedListener(Ljava/lang/String;)Z

    move-result v0

    .line 617
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception p0

    goto :goto_12

    :cond_11
    return v0

    .line 620
    :goto_12
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterPowerStateChangedListener fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
    .registers 4

    .line 297
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_31

    .line 306
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_11
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->findDisplayListenerLocked(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)I

    move-result p1

    if-ltz p1, :cond_2d

    .line 309
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;

    .line 310
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->clearEvents()V

    .line 311
    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mDualDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->updateDualCallbackIfNeededLocked()V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 314
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2b

    throw p0

    .line 304
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterFlexButtonCallback(I)V
    .registers 3

    .line 517
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 520
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 524
    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterFlexButtonCallback(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    .line 526
    :catch_10
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterFlexButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterShoulderButtonCallback(I)V
    .registers 3

    .line 643
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 646
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 650
    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterShoulderButtonCallback(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    .line 652
    :catch_10
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterShoulderButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterSmartButtonCallback(I)V
    .registers 3

    .line 582
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 585
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 589
    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterSmartButtonCallback(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    .line 591
    :catch_10
    sget-object p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterSmartButtonCallback fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterTentModeCallback(I)V
    .registers 3

    .line 407
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_b

    .line 410
    :cond_7
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;

    if-nez p0, :cond_c

    :goto_b
    return-void

    .line 414
    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManager;->unregisterTentModeCallback(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 416
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
