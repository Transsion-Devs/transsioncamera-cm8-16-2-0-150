.class public Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumColorTemperature(Landroid/content/Context;)I
    .registers 3

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMinimumColorTemperature(Landroid/content/Context;)I
    .registers 3

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNightDisplayColorTemperature()I
    .registers 2

    .line 93
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getNightDisplayColorTemperature()I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;
    .registers 2

    .line 116
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 117
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    :cond_11
    return-object p1

    .line 119
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    :cond_1d
    return-object p1
.end method

.method public isNightDisplayActivated()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public isNightDisplayAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 62
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    .registers 8

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V

    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setNightDisplayActivated(Z)Z

    move-result p0

    return p0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 3

    .line 104
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setNightDisplayColorTemperature(I)Z

    move-result p0

    return p0
.end method
