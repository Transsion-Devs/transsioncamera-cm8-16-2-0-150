.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivityTaskManager"

.field private static final mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final mActivityStarterExecutedCallbackLock:Ljava/lang/Object;


# instance fields
.field private mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

.field private mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;


# direct methods
.method public static synthetic $r8$lambda$0SlvZveN4oFRbmVkRy_lDqx-gck(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$takeTaskSnapshot$5(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2-wPM4-hPuq9dye8Sug41fmgW3w(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)Ljava/lang/Object;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$checkAndUpdateEventStateForMulti$10(Ljava/lang/String;ZZJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5f7ViFghSnVkxEyxMzQiV7GbK-g(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1570
    new-instance p2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$1;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$BzTvbvqV882v25HZUsgAJgPj_bk(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getAllMultiWindowTaskInfo$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OGwfXnPddXa4QiQtgTc5AuMlknk(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getAllRootTaskInfosOnDisplay$6(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RV85_XLXJb0ZNYxlywSaGEY-qRs(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$isSplitScreen$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fxiHA4bcqjpc450MVztoWEtsdgU(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$setConnectBlackListToSystem$4(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pT-4J6nO9h-07EVRUGOsAhOcVj8(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$getMaxRecentTasksStatic$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rqTMDqXB2aXfw_1DzfQX-GvHvd4(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$reparentActivity$2(IIZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sRFkKL5oHxbIHJv1Yq7YpPz0kCo(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;[I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uTPHPrcFTjdHkycGcXB_H81nphY(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$notAllowKeyguardGoingAwayQuickly$8(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wWDs5NCKeRFuEVulVXFwJolQQ3s(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$updateConfiguration$7(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 56
    const-string v0, "activity_task"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object p0
.end method

.method private synthetic lambda$checkAndUpdateEventStateForMulti$10(Ljava/lang/String;ZZJ)Ljava/lang/Object;
    .registers 6

    .line 1058
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1059
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1061
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getAllMultiWindowTaskInfo$9()Ljava/lang/Object;
    .registers 1

    .line 1048
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1049
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllMultiWindowTaskInfo()Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAllRootTaskInfosOnDisplay$6(I)Ljava/lang/Object;
    .registers 2

    .line 998
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_9

    .line 999
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMaxRecentTasksStatic$1()Ljava/lang/Object;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 291
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 293
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isSplitScreen$3()Ljava/lang/Object;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 314
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSplitScreen()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 316
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$notAllowKeyguardGoingAwayQuickly$8(Z)Ljava/lang/Object;
    .registers 2

    .line 1037
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1038
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notAllowKeyguardGoingAwayQuickly(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 280
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeRootTasksInWindowingModes([I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$reparentActivity$2(IIZ)Ljava/lang/Object;
    .registers 4

    .line 302
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 303
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentActivity(IIZ)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setConnectBlackListToSystem$4(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 326
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setConnectBlackListToSystem(Ljava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$takeTaskSnapshot$5(IZ)Ljava/lang/Object;
    .registers 3

    .line 980
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_9

    .line 981
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$updateConfiguration$7(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .registers 2

    .line 1027
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1028
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1030
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .registers 5

    .line 185
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 189
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->activityInMultiWindow(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 191
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityInMultiWindow fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 861
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 865
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 867
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAnimationIconLayer fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 4

    .line 1426
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_d

    .line 1431
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1434
    :goto_e
    :try_start_e
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1436
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addMultiExchangeListener fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostEndInLauncher(I)V
    .registers 4

    .line 1193
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1194
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostEndInLauncher(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1197
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostEndInLauncher RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostIMEEnd(Ljava/lang/String;)V
    .registers 4

    .line 1114
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1115
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostIMEEnd(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1118
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostIMEEnd RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostIMEStart(ILjava/lang/String;)V
    .registers 4

    .line 1103
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1104
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostIMEStart(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1107
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "boostIMEStart RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostInFling(IZI)V
    .registers 4

    .line 1147
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1148
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostInFling(IZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1151
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "boostInFling RemoteException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostSceneEnd(I)V
    .registers 4

    .line 912
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 916
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneEnd(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 918
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostSceneEnd fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostSceneStart(I)V
    .registers 4

    .line 588
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 592
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneStart(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 594
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostSceneStart fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostStartInLauncher(I)V
    .registers 4

    .line 1182
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1183
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostStartInLauncher(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1186
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostStartInLauncher RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .registers 14

    .line 1057
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .registers 4

    .line 1375
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1376
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkTaskCanEnterMultiWin(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1379
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTaskCanEnterMultiWin RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .registers 4

    .line 600
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 604
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearFinishFixedRotationWithTransaction()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 606
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearFinishFixedRotationWithTransaction fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .registers 4

    .line 1273
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1274
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearMultiWindowExtendSize(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1277
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMultiWindowExtendSize RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1387
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1388
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllMultiWindowPackageInfo()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1391
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllMultiWindowPackageInfo RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1047
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 997
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1003
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6b

    .line 1004
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_6b

    .line 1007
    :cond_20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;

    .line 1008
    new-instance v1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 1009
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivity(Landroid/content/ComponentName;)V

    .line 1010
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 1011
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskIds([I)V

    .line 1012
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskNames([Ljava/lang/String;)V

    .line 1013
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskBounds([Landroid/graphics/Rect;)V

    .line 1014
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskUserIds([I)V

    .line 1015
    iget-boolean v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setVisible(Z)V

    .line 1016
    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setPosition(I)V

    .line 1017
    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setWindowingMode(I)V

    .line 1018
    iget v0, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTaskId(I)V

    .line 1019
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_6b
    :goto_6b
    return-object p1
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .registers 5

    .line 612
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 616
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getDefaultRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 618
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRootLeash fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .registers 8

    .line 625
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 629
    :cond_6
    :try_start_6
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    move-object p0, v0

    .line 631
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDragAndZoomBgLeash fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .registers 5

    .line 102
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 106
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 108
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusedWinPkgName fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .registers 3

    .line 364
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 368
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowMode(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 377
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 381
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .registers 4

    .line 504
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 508
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMaxRecentTasksStatic()I
    .registers 4

    .line 289
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 295
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxRecentTasksStatic count :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
    .registers 4

    .line 1444
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1445
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1448
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMultiDisplayAreaAppInfo RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .registers 5

    .line 638
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 642
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 644
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiDisplayAreaTopPackageV4 fail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    .line 651
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 655
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 657
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiWinTopTask fail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 240
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 242
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiWindowBlackList fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .registers 4

    .line 1159
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1160
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowDefaultRect()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1163
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiWindowDefaultRect RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 530
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 534
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 536
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiWindowParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .registers 5

    .line 223
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 227
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 229
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiWindowVersion fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMuteStateV4(I)Z
    .registers 5

    .line 664
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 668
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMuteStateV4(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 670
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMuteStateV4 fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .registers 3

    .line 403
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 407
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNeedExit(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1363
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1364
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNotifyMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1367
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotifyMultiWindowBlackList RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .registers 3

    .line 429
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 433
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getPackageUserId(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 66
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRecentTasks fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .registers 5

    .line 543
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 548
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/app/TranRootTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_10
    if-eqz p0, :cond_1f

    .line 553
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 554
    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->getTopActivityString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivityString(Ljava/lang/String;)V

    return-object p1

    :cond_1f
    return-object v0
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .registers 3

    .line 338
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 342
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getStackInfoTaskId(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 5

    .line 899
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 903
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 905
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskBounds fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .registers 3

    .line 416
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 420
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkg(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .registers 4

    .line 1306
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1307
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkgName(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1310
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaskIdByPkgName RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public getTaskOrientation(I)I
    .registers 5

    .line 677
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 681
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskOrientation(I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 683
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskOrientation fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 873
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 877
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 879
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTasks fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .registers 5

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 80
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 82
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityComponent fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    .line 1249
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_c

    .line 1250
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopAppWindowInfo()Landroid/os/Bundle;

    move-result-object p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    goto :goto_d

    :cond_c
    return-object v0

    .line 1253
    :goto_d
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopAppWindowInfo fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    .line 690
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 694
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 696
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopTask fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .registers 3

    .line 390
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 394
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getVideoNotFullscreen(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hasMultiWindow()Z
    .registers 2

    .line 517
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 521
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hasMultiWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .registers 5

    .line 141
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 145
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 147
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookGetMultiWindowDefaultRect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hookMultiWindowToClose(II)V
    .registers 4

    .line 1618
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1619
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowToClose(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1622
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookMultiWindowToClose RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookMultiWindowToExchange(II)V
    .registers 4

    .line 1295
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1296
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowToExchange(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1299
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookMultiWindowToExchange RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookMultiWindowVisible()V
    .registers 4

    .line 1171
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1172
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowVisible()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1175
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookMultiWindowVisible RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 4

    .line 1409
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 1414
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1417
    :goto_e
    :try_start_e
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1419
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookMultiWindowVisibleWithCallback fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .registers 4

    .line 703
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 707
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookReparentToDefaultDisplay(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 709
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookReparentToDefaultDisplay fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .registers 4

    .line 715
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 719
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 721
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookSetMultiWindowDefaultRectResult fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    .line 1204
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1205
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1208
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookShowBlurLayer RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookShowBlurLayerFinish()V
    .registers 4

    .line 727
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 731
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayerFinish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 733
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookShowBlurLayerFinish fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .registers 4

    .line 739
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 743
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartActivityResult(ILandroid/graphics/Rect;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 745
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookStartActivityResult fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_d

    .line 159
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 162
    :goto_e
    :try_start_e
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 164
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hookStartMultiWindow fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 7

    .line 937
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p5, :cond_e

    .line 942
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    :goto_c
    move-object p5, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 945
    :goto_10
    :try_start_10
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    move-object p0, v0

    .line 947
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hookStartMultiWindowAndMakeOwnAnimation fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 1351
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1352
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1355
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hookToMultiWindow RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .registers 5

    .line 128
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 132
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->inMultiWindowMode()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 134
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inMultiWindowMode fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCanEnterMultiWin(Landroid/content/ComponentName;)Z
    .registers 4

    .line 1456
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1457
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isCanEnterMultiWin(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1460
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCanEnterMultiWin RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public isHasMultiWindow()Z
    .registers 2

    .line 1531
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1535
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isHasMultiWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 1537
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isIMEShowing()Z
    .registers 5

    .line 115
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 119
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isIMEShowing()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 121
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIMEShowing fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isKeyguardLocking()Z
    .registers 5

    .line 751
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 755
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isKeyguardLocking()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 757
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardLocking fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPCSourceDisplay(I)Z
    .registers 4

    .line 1488
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1489
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isPCSourceDisplay(I)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1492
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPCSourceDisplay RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isPinnedMode()Z
    .registers 5

    .line 764
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 768
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isPinnedMode()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 770
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPinnedMode fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isResizableActivity()Z
    .registers 4

    .line 1500
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1501
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isResizableActivity()Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1504
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResizableActivity RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureWindow()Z
    .registers 5

    .line 924
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 928
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSecureWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 930
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecureWindow fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSplitScreen()Z
    .registers 4

    .line 312
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 318
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSplitScreen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSupportMultiWindow()Z
    .registers 5

    .line 171
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 175
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSupportMultiWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 177
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportMultiWindow fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 351
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 355
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .registers 4

    .line 1036
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .registers 4

    .line 1226
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1227
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyAuthenticateSucceed(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1230
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAuthenticateSucceed RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .registers 4

    .line 1215
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1216
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyKeyguardGoingAwayQuickly(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1219
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardGoingAwayQuickly RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .registers 2

    .line 1068
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1069
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyLauncherPageTurning(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1072
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "notifyLauncherPageTurning RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
    .registers 7

    .line 1560
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_34

    if-nez p2, :cond_b

    goto :goto_34

    .line 1568
    :cond_b
    :try_start_b
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_2f

    .line 1569
    :try_start_e
    sget-object v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    new-instance v3, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V

    .line 1570
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    .line 1571
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v3, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->registerActivityStarterExecutedListener(Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback;Landroid/content/IntentFilter;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1573
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1574
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 1576
    :cond_2b
    monitor-exit v0

    goto :goto_33

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_29

    :try_start_2e
    throw p0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    .line 1578
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_33
    return v1

    .line 1564
    :cond_34
    :goto_34
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "registerActivityStarterExecutedObserver observer or intentfilter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .registers 4

    .line 1340
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1341
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1344
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiWindowWmShellListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 886
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 890
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 892
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAnimationIconLayer fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 4

    .line 278
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;[I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "removeRootTasksInWindowingModes!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeTask(I)Z
    .registers 5

    .line 89
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 93
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTask(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 95
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removeTaskPC(II)V
    .registers 4

    .line 1478
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1479
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTaskPC(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1482
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeTaskPC RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reparentActivity(IIZ)V
    .registers 6

    .line 301
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "reparentActivity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reparentTaskToDefaultTDA()V
    .registers 4

    .line 1318
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1319
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentTaskToDefaultTDA()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1322
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparentTaskToDefaultTDA RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestHideDock()V
    .registers 4

    .line 1521
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1522
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->requestHideDock()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1525
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestHideDock RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestShowDock()V
    .registers 4

    .line 1511
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1512
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->requestShowDock()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1515
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestShowDock RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    .line 253
    :cond_5
    :try_start_5
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 255
    invoke-interface {v0, p0, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V

    return-void

    .line 257
    :cond_e
    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    .line 258
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 262
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setActivityController fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .registers 4

    .line 1091
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1092
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setBoostSceneState(ILjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1095
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setBoostSceneState RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 324
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setConnectBlackListToSystem"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .registers 5

    .line 777
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 781
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 783
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFinishFixedRotationWithTransaction fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFlingState(Z)V
    .registers 4

    .line 1136
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1137
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setFlingState(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1140
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlingState RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .registers 4

    .line 1080
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1081
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setJankScenarioState(ILjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1084
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setJankScenarioState RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .registers 4

    .line 1329
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1330
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1333
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiEnableStateForOOBE RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .registers 4

    .line 789
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 793
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowAcquireFocus(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 795
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowAcquireFocus fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 801
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 805
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowBlackListToSystem(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 807
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowBlackListToSystem fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 813
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 817
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 819
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowConfigToSystem fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowExtendSize(II)V
    .registers 4

    .line 1261
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1262
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowExtendSize(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1265
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiWindowExtendSize RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .registers 4

    .line 965
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 969
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowParams(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 971
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowParams fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 825
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 829
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 831
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiWindowWhiteListToSystem fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMuteStateV4(ZI)V
    .registers 4

    .line 837
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 841
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMuteStateV4(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 843
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMuteStateV4 fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranActivityTaskManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .registers 5

    .line 563
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 567
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindow(Ljava/lang/String;III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 569
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindow fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .registers 7

    .line 575
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 579
    :cond_5
    :try_start_5
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    move-object p0, v0

    .line 581
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindowAsUser fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .registers 7

    .line 1399
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1400
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 1403
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setStartInMultiWindowWithBundle RemoteException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .registers 4

    .line 953
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 957
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setTbSpecialLayerState(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 959
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTbSpecialLayerState fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .registers 4

    .line 1284
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1285
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setThunderbackAnimating(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1288
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThunderbackAnimating RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .registers 4

    .line 211
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 215
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->startCurrentAppInMultiWindow(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 217
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startCurrentAppInMultiWindow fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLauncherAction(Landroid/content/Intent;I)V
    .registers 4

    .line 1125
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1126
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->startLauncherAction(Landroid/content/Intent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1129
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startLauncherAction RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopTaskPC(II)V
    .registers 4

    .line 1467
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1468
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->stopTaskPC(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1471
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopTaskPC RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .registers 6

    .line 978
    new-instance v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>()V

    .line 979
    new-instance v1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)V

    const-string p0, "activity_task"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    if-nez p0, :cond_22

    .line 986
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "TranTaskSnapshot is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 989
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 990
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 991
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "takeTaskSnapshot mTranTaskSnapshot:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public taskInMultiWindowById(I)Z
    .registers 5

    .line 198
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 202
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->taskInMultiWindowById(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 204
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskInMultiWindowById fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
    .registers 6

    .line 1585
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_10

    .line 1589
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver observer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1593
    :cond_10
    :try_start_10
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_41

    .line 1594
    :try_start_13
    sget-object v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mActivityStarterExecutedCallbackHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    if-eqz v3, :cond_36

    .line 1596
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, v3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->unRegisterActivityStarterExecutedListener(Lcom/transsion/hubsdk/app/ITranActivityStarterExecutedCallback;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 1598
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 1599
    monitor-exit v0

    return p0

    :catchall_2b
    move-exception p0

    goto :goto_3f

    .line 1601
    :cond_2d
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver: unregister failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    monitor-exit v0

    return v1

    .line 1605
    :cond_36
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver: callback not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    monitor-exit v0

    goto :goto_45

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_2b

    :try_start_40
    throw p0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    .line 1609
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_45
    return v1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 4

    .line 1026
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .registers 4

    .line 1237
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1238
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1241
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMediaMapForDynamicIsland fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .registers 4

    .line 849
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 853
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateZBoostTaskIdWhenToSplit(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 855
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZBoostTaskIdWhenToSplit fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
