.class public Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;,
        Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 142
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeDualDisplay()V
    .registers 2

    .line 104
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->closeDualDisplay()V

    return-void
.end method

.method public closeDualDisplayForSelfie()V
    .registers 2

    .line 256
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->closeDualDisplayForSelfie()V

    return-void
.end method

.method public executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 507
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 505
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkg or shortcut must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurSelfieDisplayId()I
    .registers 2

    .line 289
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getCurSelfieDisplayId()I

    move-result p0

    return p0
.end method

.method public getForcedUsingDisplayMode()I
    .registers 2

    .line 183
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getForcedUsingDisplayMode()I

    move-result p0

    return p0
.end method

.method public getSecondaryDisplayId()I
    .registers 2

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getSecondaryDisplayId()I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;
    .registers 3

    .line 38
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 40
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    if-nez p1, :cond_10

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->getInstance()Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    :cond_10
    return-object p1

    .line 43
    :cond_11
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    if-nez p1, :cond_23

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;

    :cond_23
    return-object p1
.end method

.method public getSourceConnectFlag()I
    .registers 2

    .line 193
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->getSourceConnectFlag()I

    move-result p0

    return p0
.end method

.method public isDualDisplayForSelfie()Z
    .registers 2

    .line 279
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->isDualDisplayForSelfie()Z

    move-result p0

    return p0
.end method

.method public isTentMode()Z
    .registers 2

    .line 246
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->isTentMode()Z

    move-result p0

    return p0
.end method

.method public openDualDisplay()V
    .registers 2

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->openDualDisplay()V

    return-void
.end method

.method public openDualDisplayForSelfie(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 269
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33261:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->openDualDisplayForSelfie(Landroid/os/Bundle;)V

    return-void

    .line 267
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bundle state cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
    .registers 4

    .line 119
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .registers 4

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1d

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1d

    if-eqz p2, :cond_15

    .line 322
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V

    return-void

    .line 320
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
    .registers 4

    .line 409
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_44

    .line 415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 419
    :try_start_10
    const-string v0, "com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_15} :catch_20

    .line 423
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_20
    move-exception p0

    .line 421
    new-instance p1, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No interface,please implement yourself: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tag must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .registers 4

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1d

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1d

    if-eqz p2, :cond_15

    .line 478
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V

    return-void

    .line 476
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 473
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .registers 4

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1d

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1d

    if-eqz p2, :cond_15

    .line 380
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33321:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V

    return-void

    .line 378
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .registers 4

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1d

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1d

    if-eqz p2, :cond_15

    .line 225
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V

    return-void

    .line 223
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBrightness(IF)V
    .registers 4

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setBrightness(IF)V

    return-void
.end method

.method public setTemporaryBrightness(IF)V
    .registers 4

    .line 59
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setTemporaryBrightness(IF)V

    return-void
.end method

.method public setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
    .registers 5

    .line 345
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_13

    .line 351
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V

    return-void

    .line 349
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Reason must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
    .registers 4

    .line 433
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 436
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 440
    :try_start_e
    const-string v0, "com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_13} :catch_1e

    .line 444
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unRegisterPowerStateChangedListener(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_1e
    move-exception p0

    .line 442
    new-instance p1, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No interface,please implement yourself: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tag must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
    .registers 3

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V

    return-void
.end method

.method public unregisterFlexButtonCallback(I)V
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_13

    .line 334
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterFlexButtonCallback(I)V

    return-void

    .line 332
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterShoulderButtonCallback(I)V
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_13

    .line 490
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterShoulderButtonCallback(I)V

    return-void

    .line 488
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSmartButtonCallback(I)V
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_13

    .line 392
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33321:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterSmartButtonCallback(I)V

    return-void

    .line 390
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterTentModeCallback(I)V
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_13

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_13

    .line 237
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;->unregisterTentModeCallback(I)V

    return-void

    .line 235
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
