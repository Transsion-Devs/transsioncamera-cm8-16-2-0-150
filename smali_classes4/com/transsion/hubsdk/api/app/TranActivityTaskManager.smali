.class public Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;
    }
.end annotation


# static fields
.field public static final BOOST_SCENE_4:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TranActivityTaskManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 353
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->activityInMultiWindow(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 351
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_c

    .line 841
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->addAnimationIconLayer(Landroid/view/SurfaceControl;)V

    return-void

    .line 839
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter surface control"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 4

    .line 1300
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public boostEndInLauncher(I)V
    .registers 3

    .line 1188
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostEndInLauncher(I)V

    return-void
.end method

.method public boostIMEEnd(Ljava/lang/String;)V
    .registers 3

    .line 1144
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostIMEEnd(Ljava/lang/String;)V

    return-void
.end method

.method public boostIMEStart(ILjava/lang/String;)V
    .registers 4

    .line 1140
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostIMEStart(ILjava/lang/String;)V

    return-void
.end method

.method public boostInFling(IZI)V
    .registers 5

    .line 1156
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostInFling(IZI)V

    return-void
.end method

.method public boostSceneEnd(I)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_11

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_11

    .line 888
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostSceneEnd(I)V

    return-void

    .line 886
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public boostSceneStart(I)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_11

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_11

    .line 526
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostSceneStart(I)V

    return-void

    .line 524
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter scene"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public boostStartInLauncher(I)V
    .registers 3

    .line 1180
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->boostStartInLauncher(I)V

    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .registers 8

    .line 1076
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_2c

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-ltz v0, :cond_24

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-gtz v0, :cond_24

    .line 1085
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z

    move-result p0

    return p0

    .line 1083
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delayTime is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1080
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .registers 3

    .line 1284
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->checkTaskCanEnterMultiWin(I)Z

    move-result p0

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 537
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->clearFinishFixedRotationWithTransaction()V

    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .registers 3

    .line 1248
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->clearMultiWindowExtendSize(I)V

    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1288
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllMultiWindowPackageInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1063
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllMultiWindowTaskInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 1030
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1028
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 549
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getDefaultRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .registers 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-ltz p1, :cond_f

    if-ltz p2, :cond_f

    .line 569
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 567
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters width or height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 103
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getFocusedWinPkgName"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .registers 3

    .line 210
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getGivenPkgWindowMode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 231
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .registers 4

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_14

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_14

    .line 406
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0

    .line 404
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMaxRecentTasksStatic()I
    .registers 2

    .line 912
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMaxRecentTasksStatic()I

    move-result p0

    return p0
.end method

.method public getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
    .registers 4

    .line 1304
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 583
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 597
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowBlackList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .registers 2

    .line 1165
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowDefaultRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 429
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .registers 2

    .line 386
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMultiWindowVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMuteStateV4(I)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 610
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getMuteStateV4(I)Z

    move-result p0

    return p0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .registers 3

    .line 259
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getNeedExit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1280
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getNotifyMultiWindowBlackList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .registers 3

    .line 287
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getPackageUserId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .registers 5

    .line 444
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;
    .registers 3

    .line 463
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 464
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityTaskManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    :cond_18
    return-object p1

    .line 467
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityTaskManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    :cond_2b
    return-object p1
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .registers 3

    .line 175
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getStackInfoTaskId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 3

    .line 455
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .registers 3

    .line 273
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskIdByPkg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .registers 4

    .line 1260
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskIdByPkgName(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTaskOrientation(I)I
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 623
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTaskOrientation(I)I

    move-result p0

    return p0
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

    .line 856
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getTopActivityComponent"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .registers 2

    .line 1240
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopAppWindowInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    .line 639
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    .line 637
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .registers 3

    .line 245
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getVideoNotFullscreen(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasMultiWindow()Z
    .registers 2

    .line 417
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hasMultiWindow()Z

    move-result p0

    return p0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 300
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_11
    :goto_11
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public hookMultiWindowToClose(II)V
    .registers 4

    .line 1363
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowToClose(II)V

    return-void
.end method

.method public hookMultiWindowToExchange(II)V
    .registers 4

    .line 1256
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowToExchange(II)V

    return-void
.end method

.method public hookMultiWindowVisible()V
    .registers 2

    .line 1172
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowVisible()V

    return-void
.end method

.method public hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 3

    .line 1296
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 652
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookReparentToDefaultDisplay(II)V

    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_c

    .line 667
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V

    return-void

    .line 665
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter rect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 1197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1200
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appSurface or packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookShowBlurLayerFinish()V
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 678
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookShowBlurLayerFinish()V

    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p2, :cond_c

    .line 694
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartActivityResult(ILandroid/graphics/Rect;)V

    return-void

    .line 692
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 5

    if-ltz p1, :cond_c

    .line 317
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void

    .line 315
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p4, :cond_c

    .line 971
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    return-void

    .line 969
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid startBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 1276
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran inMultiWindowMode"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->inMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public isCanEnterMultiWin(Landroid/content/ComponentName;)Z
    .registers 3

    .line 1308
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isCanEnterMultiWin(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isHasMultiWindow()Z
    .registers 2

    .line 1350
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isHasMultiWindow()Z

    move-result p0

    return p0
.end method

.method public isIMEShowing()Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 116
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran isIMEShowing"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isIMEShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardLocking()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 706
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isKeyguardLocking()Z

    move-result p0

    return p0
.end method

.method public isPCSourceDisplay(I)Z
    .registers 3

    .line 1327
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isPCSourceDisplay(I)Z

    move-result p0

    return p0
.end method

.method public isPinnedMode()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 718
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isPinnedMode()Z

    move-result p0

    return p0
.end method

.method public isResizableActivity()Z
    .registers 2

    .line 1334
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isResizableActivity()Z

    move-result p0

    return p0
.end method

.method public isSecureWindow()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 902
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSecureWindow()Z

    move-result p0

    return p0
.end method

.method public isSplitScreen()Z
    .registers 2

    .line 938
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSplitScreen()Z

    move-result p0

    return p0
.end method

.method public isSupportMultiWindow()Z
    .registers 2

    .line 328
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isSupportMultiWindow()Z

    move-result p0

    return p0
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .registers 3

    .line 1055
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notAllowKeyguardGoingAwayQuickly(Z)V

    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .registers 3

    .line 1215
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyAuthenticateSucceed(Z)V

    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .registers 3

    .line 1207
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyKeyguardGoingAwayQuickly(Z)V

    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .registers 3

    .line 1094
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1097
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->notifyLauncherPageTurning(Z)V

    return-void
.end method

.method public registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
    .registers 4

    .line 1355
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z

    move-result p0

    return p0
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .registers 3

    .line 1272
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->registerMultiWindowWmShellListener(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_c

    .line 872
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeAnimationIconLayer(Landroid/view/SurfaceControl;)V

    return-void

    .line 870
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter surface control"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 159
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeRootTasksInWindowingModes([I)V

    return-void
.end method

.method public removeTask(I)Z
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 90
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran removeTask"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeTask(I)Z

    move-result p0

    return p0
.end method

.method public removeTaskPC(II)V
    .registers 4

    .line 1320
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeTaskPC(II)V

    return-void
.end method

.method public reparentActivity(IIZ)V
    .registers 6

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_1f

    const v1, 0x7fffffff

    if-ge p1, v1, :cond_1f

    if-le p2, v0, :cond_17

    if-ge p2, v1, :cond_17

    .line 929
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->reparentActivity(IIZ)V

    return-void

    .line 927
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter destDisplayId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 924
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter fromDisplayId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reparentTaskToDefaultTDA()V
    .registers 2

    .line 1264
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->reparentTaskToDefaultTDA()V

    return-void
.end method

.method public requestHideDock()V
    .registers 2

    .line 1346
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->requestHideDock()V

    return-void
.end method

.method public requestShowDock()V
    .registers 2

    .line 1340
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->requestShowDock()V

    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .registers 4

    .line 146
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V

    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .registers 5

    .line 1126
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1129
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    if-ltz p1, :cond_19

    .line 1135
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setBoostSceneState(ILjava/lang/String;Z)V

    return-void

    .line 1133
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1130
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scene is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 948
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 951
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setConnectBlackListToSystem(Ljava/util/List;)V

    return-void

    .line 949
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .registers 6
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 736
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V

    return-void

    .line 734
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlingState(Z)V
    .registers 3

    .line 1152
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setFlingState(Z)V

    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .registers 5

    .line 1107
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1110
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    if-ltz p1, :cond_19

    .line 1116
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setJankScenarioState(ILjava/lang/String;Z)V

    return-void

    .line 1114
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1111
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jankName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .registers 4

    .line 1268
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_13

    .line 752
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowAcquireFocus(IZ)V

    return-void

    .line 750
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiWindowId has exceeded the maximum value "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 767
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowBlackListToSystem(Ljava/util/List;)V

    return-void

    .line 765
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 783
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 781
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowExtendSize(II)V
    .registers 4

    .line 1244
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowExtendSize(II)V

    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_c

    .line 1000
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowParams(Landroid/os/Bundle;)V

    return-void

    .line 998
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 798
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMultiWindowWhiteListToSystem(Ljava/util/List;)V

    return-void

    .line 796
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameter list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMuteStateV4(ZI)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 811
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setMuteStateV4(ZI)V

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .registers 6

    .line 488
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindow(Ljava/lang/String;III)V

    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .registers 7

    .line 509
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .registers 7

    .line 1292
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 985
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setTbSpecialLayerState(ZI)V

    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .registers 3

    .line 1252
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setThunderbackAnimating(Z)V

    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .registers 4

    .line 340
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->startCurrentAppInMultiWindow(ZI)V

    return-void
.end method

.method public startLauncherAction(Landroid/content/Intent;I)V
    .registers 4

    .line 1148
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->startLauncherAction(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopTaskPC(II)V
    .registers 4

    .line 1314
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->stopTaskPC(II)V

    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 1014
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public taskInMultiWindowById(I)Z
    .registers 3

    if-ltz p1, :cond_d

    .line 366
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->taskInMultiWindowById(I)Z

    move-result p0

    return p0

    .line 364
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid task id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
    .registers 3

    .line 1358
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z

    move-result p0

    return p0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 1045
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    .line 1043
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Configuration is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .registers 4

    .line 1227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1230
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V

    return-void

    .line 1228
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_13

    .line 826
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->updateZBoostTaskIdWhenToSplit(I)V

    return-void

    .line 824
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskID is out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
