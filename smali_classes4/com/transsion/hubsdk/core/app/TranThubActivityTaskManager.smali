.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivityTaskManager"


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
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 42
    const-string v0, "activity_task"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object p0
.end method

.method private synthetic lambda$checkAndUpdateEventStateForMulti$10(Ljava/lang/String;ZZJ)Ljava/lang/Object;
    .registers 6

    .line 1044
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1045
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1047
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getAllMultiWindowTaskInfo$9()Ljava/lang/Object;
    .registers 1

    .line 1034
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1035
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

    .line 984
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_9

    .line 985
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMaxRecentTasksStatic$1()Ljava/lang/Object;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 277
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 279
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isSplitScreen$3()Ljava/lang/Object;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 300
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSplitScreen()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 302
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$notAllowKeyguardGoingAwayQuickly$8(Z)Ljava/lang/Object;
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1024
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notAllowKeyguardGoingAwayQuickly(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 266
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeRootTasksInWindowingModes([I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$reparentActivity$2(IIZ)Ljava/lang/Object;
    .registers 4

    .line 288
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 289
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentActivity(IIZ)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setConnectBlackListToSystem$4(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 312
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setConnectBlackListToSystem(Ljava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$takeTaskSnapshot$5(IZ)Ljava/lang/Object;
    .registers 3

    .line 966
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_9

    .line 967
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$updateConfiguration$7(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .registers 2

    .line 1013
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_d

    .line 1014
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1016
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .registers 5

    .line 171
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 175
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->activityInMultiWindow(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 177
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

    .line 847
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 851
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 853
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

.method public boostEndInLauncher(I)V
    .registers 4

    .line 1122
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1123
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostEndInLauncher(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1126
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

.method public boostSceneEnd(I)V
    .registers 4

    .line 898
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 902
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneEnd(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 904
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

    .line 574
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 578
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostSceneStart(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 580
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

    .line 1111
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1112
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->boostStartInLauncher(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1115
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

    .line 1043
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

    .line 1304
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1305
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->checkTaskCanEnterMultiWin(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1308
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

    .line 586
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 590
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearFinishFixedRotationWithTransaction()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 592
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

    .line 1202
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1203
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->clearMultiWindowExtendSize(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1206
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

    .line 1316
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1317
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getAllMultiWindowPackageInfo()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1320
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllMultiWindowPackageInfo RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
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

    .line 1033
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

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

    .line 983
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 989
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6b

    .line 990
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_6b

    .line 993
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

    .line 994
    new-instance v1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 995
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivity(Landroid/content/ComponentName;)V

    .line 996
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 997
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskIds([I)V

    .line 998
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskNames([Ljava/lang/String;)V

    .line 999
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskBounds([Landroid/graphics/Rect;)V

    .line 1000
    iget-object v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskUserIds([I)V

    .line 1001
    iget-boolean v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setVisible(Z)V

    .line 1002
    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setPosition(I)V

    .line 1003
    iget v2, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setWindowingMode(I)V

    .line 1004
    iget v0, v0, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTaskId(I)V

    .line 1005
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_6b
    :goto_6b
    return-object p1
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .registers 5

    .line 598
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 602
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getDefaultRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 604
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

    .line 611
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 615
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

    .line 617
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

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 92
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 94
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

    .line 350
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 354
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowMode(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 363
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 367
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .registers 4

    .line 490
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 494
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 496
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMaxRecentTasksStatic()I
    .registers 4

    .line 275
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 281
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

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .registers 5

    .line 624
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 628
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 630
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

    .line 637
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 641
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 643
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

    .line 222
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 226
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 228
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

    .line 1088
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1089
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowDefaultRect()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1092
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

    .line 516
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 520
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 522
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

    .line 209
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 213
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMultiWindowVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 215
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

    .line 650
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 654
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getMuteStateV4(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 656
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

    .line 389
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 393
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNeedExit(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 395
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

    .line 1292
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1293
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getNotifyMultiWindowBlackList()Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1296
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotifyMultiWindowBlackList RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .registers 3

    .line 415
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 419
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getPackageUserId(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 421
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

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 52
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 54
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

    .line 529
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 534
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/app/TranRootTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_10
    if-eqz p0, :cond_1f

    .line 539
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 540
    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranRootTaskInfo;->getTopActivityString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivityString(Ljava/lang/String;)V

    return-object p1

    :cond_1f
    return-object v0
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .registers 3

    .line 324
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 328
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getStackInfoTaskId(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 5

    .line 885
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 889
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 891
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

    .line 402
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 406
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkg(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .registers 4

    .line 1235
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1236
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskIdByPkgName(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1239
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

    .line 663
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 667
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTaskOrientation(I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 669
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

    .line 859
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 863
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 865
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

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 66
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 68
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

    .line 1178
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_c

    .line 1179
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

    .line 1182
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

    .line 676
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 680
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 682
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

    .line 376
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 380
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getVideoNotFullscreen(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hasMultiWindow()Z
    .registers 2

    .line 503
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 507
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hasMultiWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .registers 5

    .line 127
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 131
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 133
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

.method public hookMultiWindowToExchange(II)V
    .registers 4

    .line 1224
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1225
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowToExchange(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1228
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

    .line 1100
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1101
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookMultiWindowVisible()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1104
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

.method public hookReparentToDefaultDisplay(II)V
    .registers 4

    .line 689
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 693
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookReparentToDefaultDisplay(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 695
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

    .line 701
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 705
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 707
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

    .line 1133
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1134
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1137
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

    .line 713
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 717
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookShowBlurLayerFinish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 719
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

    .line 725
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 729
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartActivityResult(ILandroid/graphics/Rect;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 731
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

    .line 140
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_d

    .line 145
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 148
    :goto_e
    :try_start_e
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/window/ITranWindowContainerTransactionCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 150
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

    .line 923
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p5, :cond_e

    .line 928
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;

    invoke-direct {v0, p0, p5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranWindowContainerTransactionCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    :goto_c
    move-object p5, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 931
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

    .line 933
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

    .line 1280
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_20

    .line 1281
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1284
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

    .line 114
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 118
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->inMultiWindowMode()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 120
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

.method public isIMEShowing()Z
    .registers 5

    .line 101
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 105
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isIMEShowing()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 107
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

    .line 737
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 741
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isKeyguardLocking()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 743
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

.method public isPinnedMode()Z
    .registers 5

    .line 750
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 754
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isPinnedMode()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 756
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

.method public isSecureWindow()Z
    .registers 5

    .line 910
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 914
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSecureWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 916
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

    .line 298
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 304
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

    .line 157
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 161
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isSupportMultiWindow()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 163
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

    .line 337
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 341
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .registers 4

    .line 1022
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

    .line 1155
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1156
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyAuthenticateSucceed(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1159
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

    .line 1144
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1145
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyKeyguardGoingAwayQuickly(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1148
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

    .line 1054
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1055
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->notifyLauncherPageTurning(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1058
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "notifyLauncherPageTurning RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .registers 4

    .line 1269
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1270
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1273
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

    .line 872
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 876
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 878
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

    .line 264
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;[I)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "removeRootTasksInWindowingModes!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeTask(I)Z
    .registers 5

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 79
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTask(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 81
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

.method public reparentActivity(IIZ)V
    .registers 6

    .line 287
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "reparentActivity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reparentTaskToDefaultTDA()V
    .registers 4

    .line 1247
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1248
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->reparentTaskToDefaultTDA()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1251
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

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez v0, :cond_5

    return-void

    .line 239
    :cond_5
    :try_start_5
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 241
    invoke-interface {v0, p0, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V

    return-void

    .line 243
    :cond_e
    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 248
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

    .line 1077
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1078
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setBoostSceneState(ILjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1081
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

    .line 310
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)V

    const-string p0, "activity_task"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setConnectBlackListToSystem"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .registers 5

    .line 763
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 767
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 769
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

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .registers 4

    .line 1066
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1067
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setJankScenarioState(ILjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    .line 1070
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setJankScenarioState RemoteException"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .registers 4

    .line 1258
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1259
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1262
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

    .line 775
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 779
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowAcquireFocus(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 781
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

    .line 787
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 791
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowBlackListToSystem(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 793
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

    .line 799
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 803
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 805
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

    .line 1190
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1191
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowExtendSize(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1194
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

    .line 951
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 955
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowParams(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 957
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

    .line 811
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 815
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 817
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

    .line 823
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 827
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setMuteStateV4(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 829
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

    .line 258
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .registers 5

    .line 549
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 553
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindow(Ljava/lang/String;III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 555
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

    .line 561
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 565
    :cond_5
    :try_start_5
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    move-object p0, v0

    .line 567
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

    .line 1328
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1329
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 1332
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

    .line 939
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 943
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setTbSpecialLayerState(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 945
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

    .line 1213
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1214
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setThunderbackAnimating(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1217
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

    .line 197
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 201
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->startCurrentAppInMultiWindow(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 203
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

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .registers 6

    .line 964
    new-instance v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>()V

    .line 965
    new-instance v1, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v2, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)V

    const-string p0, "activity_task"

    invoke-virtual {v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/window/TranTaskSnapshot;

    if-nez p0, :cond_22

    .line 972
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "TranTaskSnapshot is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 975
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 976
    invoke-virtual {p0}, Lcom/transsion/hubsdk/window/TranTaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 977
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

    .line 184
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 188
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->taskInMultiWindowById(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 190
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

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 4

    .line 1012
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Landroid/content/res/Configuration;)V

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

    .line 1166
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz p0, :cond_7

    .line 1167
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 1170
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

    .line 835
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-nez p0, :cond_5

    return-void

    .line 839
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->updateZBoostTaskIdWhenToSplit(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 841
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
