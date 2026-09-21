.class public Lcom/transsion/hubsdk/api/os/TranBuildExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLATFORM_MTK:I = 0x1

.field public static final PLATFORM_OTHER:I = 0x0

.field public static final PLATFORM_QCOM:I = 0x3

.field public static final PLATFORM_SPRD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranBuildExt"

.field protected static sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

.field protected static sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;


# instance fields
.field private mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    const-string v1, "com.transsion.hubsdk.os.TranBuild"

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    return-void
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;
    .registers 2

    .line 20
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 21
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_11

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_11
    return-object p0

    .line 23
    :cond_12
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSettings"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_24

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_24
    return-object p0
.end method


# virtual methods
.method public getAicoreOfflineLlmSupport()I
    .registers 1

    .line 275
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getAicoreOfflineLlmSupport()I

    move-result p0

    return p0
.end method

.method public getApmLimitBlockModeSupport()I
    .registers 1

    .line 499
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getApmLimitBlockModeSupport()I

    move-result p0

    return p0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .registers 1

    .line 98
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBoardPlatform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .registers 1

    .line 106
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBuildDisplayId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .registers 1

    .line 195
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getBuildNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingAnimationSupport()I
    .registers 1

    .line 459
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationSupport()I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirePowerSupport()I
    .registers 1

    .line 467
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationWirePowerSupport()I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirelessPowerSupport()I
    .registers 1

    .line 451
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingAnimationWirelessPowerSupport()I

    move-result p0

    return p0
.end method

.method public getChargingPowerHideSupport()I
    .registers 1

    .line 483
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChargingPowerHideSupport()I

    move-result p0

    return p0
.end method

.method public getChildModeOpenSupport()I
    .registers 1

    .line 443
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChildModeOpenSupport()I

    move-result p0

    return p0
.end method

.method public getChildmodeSupport()I
    .registers 1

    .line 243
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getChildmodeSupport()I

    move-result p0

    return p0
.end method

.method public getDynamicallyStkIconSupport()I
    .registers 1

    .line 267
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getDynamicallyStkIconSupport()I

    move-result p0

    return p0
.end method

.method protected getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;
    .registers 3

    .line 918
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->mReflectionHelper:Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;

    invoke-virtual {p0, p2}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->isFieldExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 919
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_19

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sThubService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_19
    return-object p0

    .line 921
    :cond_1a
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->TAG:Ljava/lang/String;

    const-string p1, "TranAospSettings"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    if-nez p0, :cond_2c

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranBuildExt;->sAospService:Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    :cond_2c
    return-object p0
.end method

.method public getFansOnSaleSupport()I
    .registers 1

    .line 211
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getFansOnSaleSupport()I

    move-result p0

    return p0
.end method

.method public getGeniexEntranceSupport()I
    .registers 1

    .line 138
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGeniexEntranceSupport()I

    move-result p0

    return p0
.end method

.method public getGeniexSupport()I
    .registers 1

    .line 130
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGeniexSupport()I

    move-result p0

    return p0
.end method

.method public getGotiiEntranceSupport()I
    .registers 1

    .line 146
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getGotiiEntranceSupport()I

    move-result p0

    return p0
.end method

.method public getKeyguardPovaThemeSupport()I
    .registers 1

    .line 491
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKeyguardPovaThemeSupport()I

    move-result p0

    return p0
.end method

.method public getKeyguardThemeSupport()I
    .registers 1

    .line 475
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKeyguardThemeSupport()I

    move-result p0

    return p0
.end method

.method public getKolunGoSupport()I
    .registers 1

    .line 315
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKolunGoSupport()I

    move-result p0

    return p0
.end method

.method public getKolunSupport()I
    .registers 1

    .line 307
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getKolunSupport()I

    move-result p0

    return p0
.end method

.method public getNavbarOverride()Ljava/lang/String;
    .registers 3

    .line 908
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "NAV_BAR_OVERRIDE"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNavbarOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteAiBgSupport()I
    .registers 1

    .line 571
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteAiBgSupport()I

    move-result p0

    return p0
.end method

.method public getNoteAiDrawSupport()I
    .registers 1

    .line 555
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteAiDrawSupport()I

    move-result p0

    return p0
.end method

.method public getNoteCanvasSupport()I
    .registers 1

    .line 563
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteCanvasSupport()I

    move-result p0

    return p0
.end method

.method public getNoteFansLinkSupport()I
    .registers 1

    .line 579
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteFansLinkSupport()I

    move-result p0

    return p0
.end method

.method public getNoteSuniaPenSupport()I
    .registers 1

    .line 587
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getNoteSuniaPenSupport()I

    move-result p0

    return p0
.end method

.method public getOsCustomizedSplitScreenSupport()I
    .registers 1

    .line 219
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getOsCustomizedSplitScreenSupport()I

    move-result p0

    return p0
.end method

.method public getPlatform()I
    .registers 1

    .line 948
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getPlatform()I

    move-result p0

    return p0
.end method

.method public getProductBrand()Ljava/lang/String;
    .registers 1

    .line 122
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getProductBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysOobeCountry()Ljava/lang/String;
    .registers 1

    .line 90
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSysOobeCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysUserExperience()Ljava/lang/String;
    .registers 1

    .line 114
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getSysUserExperience()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranAiKeySupport()I
    .registers 1

    .line 595
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAiKeySupport()I

    move-result p0

    return p0
.end method

.method public getTranAiSubtitlesSupport()I
    .registers 1

    .line 291
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAiSubtitlesSupport()I

    move-result p0

    return p0
.end method

.method public getTranAicoreLlmSupport()I
    .registers 1

    .line 299
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAicoreLlmSupport()I

    move-result p0

    return p0
.end method

.method public getTranAirTransferSupport()Ljava/lang/String;
    .registers 3

    .line 645
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_AIR_TRANSFER_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAirTransferSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranAssistVoiceprint()Ljava/lang/String;
    .registers 1

    .line 371
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranAssistVoiceprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranBom()Ljava/lang/String;
    .registers 1

    .line 154
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranBom()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranChooserPrivacySupport()I
    .registers 3

    .line 795
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_CHOOSER_PRIVACY_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranChooserPrivacySupport()I

    move-result p0

    return p0
.end method

.method public getTranCloudserverSupport()I
    .registers 3

    .line 859
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_CLOUDSERVER_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranCloudserverSupport()I

    move-result p0

    return p0
.end method

.method public getTranCutepetSupport()I
    .registers 3

    .line 654
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_CUTEPET_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranCutepetSupport()I

    move-result p0

    return p0
.end method

.method public getTranDualSysSupport()I
    .registers 3

    .line 689
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_DUAL_SYS_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranDualSysSupport()I

    move-result p0

    return p0
.end method

.method public getTranDynamicbarSupport()I
    .registers 3

    .line 603
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_DYNAMICBAR_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranDynamicbarSupport()I

    move-result p0

    return p0
.end method

.method public getTranEyeCareSupport()I
    .registers 3

    .line 705
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_EYE_CARE_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranEyeCareSupport()I

    move-result p0

    return p0
.end method

.method public getTranFlipScreenSupport()I
    .registers 3

    .line 627
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_FLIP_SCREEN_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranFlipScreenSupport()I

    move-result p0

    return p0
.end method

.method public getTranFoldableScreenSupport()I
    .registers 3

    .line 611
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_FOLDABLE_SCREEN_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranFoldableScreenSupport()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports10Support()I
    .registers 3

    .line 819
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_GAME_TP_ESPORTS10_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports10Support()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports20Support()I
    .registers 3

    .line 803
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_GAME_TP_ESPORTS20_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports20Support()I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports30Support()I
    .registers 3

    .line 811
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_GAME_TP_ESPORTS30_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGameTpEsports30Support()I

    move-result p0

    return p0
.end method

.method public getTranGlobalguideSupport()I
    .registers 3

    .line 891
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_GLOBALGUIDE_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranGlobalguideSupport()I

    move-result p0

    return p0
.end method

.method public getTranHrSpo2Support()Ljava/lang/String;
    .registers 3

    .line 875
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_HR_SPO2_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranHrSpo2Support()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranHrvStressSupport()Ljava/lang/String;
    .registers 3

    .line 883
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_HRV_STRESS_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranHrvStressSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranLedCamonSupport()I
    .registers 1

    .line 531
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedCamonSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedControlCenterSupport()I
    .registers 1

    .line 515
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedControlCenterSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedEllaSupport()I
    .registers 1

    .line 523
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedEllaSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedGtSupport()I
    .registers 1

    .line 411
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedGtSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedHotSupport()I
    .registers 1

    .line 435
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedHotSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedItelsSupport()I
    .registers 1

    .line 419
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedItelsSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedNoteSupport()I
    .registers 1

    .line 427
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedNoteSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedPovaSupport()I
    .registers 1

    .line 539
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedPovaSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedSparkSupport()I
    .registers 1

    .line 547
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedSparkSupport()I

    move-result p0

    return p0
.end method

.method public getTranLedSupport()I
    .registers 1

    .line 507
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLedSupport()I

    move-result p0

    return p0
.end method

.method public getTranLightningMultiWindowSupport()I
    .registers 3

    .line 843
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_LIGHTNING_MULTI_WINDOW_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranLightningMultiWindowSupport()I

    move-result p0

    return p0
.end method

.method public getTranMistouchSupport()I
    .registers 3

    .line 827
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_MISTOUCH_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranMistouchSupport()I

    move-result p0

    return p0
.end method

.method public getTranOpenwithSupport()I
    .registers 3

    .line 779
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_OPENWITH_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOpenwithSupport()I

    move-result p0

    return p0
.end method

.method public getTranOperatorBookmarkSupport()I
    .registers 1

    .line 203
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOperatorBookmarkSupport()I

    move-result p0

    return p0
.end method

.method public getTranOsType()Ljava/lang/String;
    .registers 1

    .line 82
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOsType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranOsVersion()Ljava/lang/String;
    .registers 1

    .line 74
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranOsVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPalmFind()Ljava/lang/String;
    .registers 1

    .line 179
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPalmFind()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPalmFind120()Ljava/lang/String;
    .registers 1

    .line 187
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPalmFind120()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPrivacyHubSupport()I
    .registers 3

    .line 672
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_PRIVACY_HUB_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPrivacyHubSupport()I

    move-result p0

    return p0
.end method

.method public getTranProductPersonalizedDisplayFlipSupport()I
    .registers 3

    .line 755
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_PRODUCT_PERSONALIZED_DISPLAY_FLIP_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranProductPersonalizedDisplayFlipSupport()I

    move-result p0

    return p0
.end method

.method public getTranPtRemoteLockSupport()I
    .registers 3

    .line 835
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_PT_REMOTE_LOCK_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranPtRemoteLockSupport()I

    move-result p0

    return p0
.end method

.method public getTranRepairModeSupport()I
    .registers 3

    .line 681
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_REPAIR_MODE_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranRepairModeSupport()I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordMicScaleLevel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_SCREENRECORD_MIC_SCALE_LEVEL"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenrecordMicScaleLevel()I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordSrSaSupport()I
    .registers 3

    .line 737
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_SCREENRECORD_SR_SA_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenrecordSrSaSupport()I

    move-result p0

    return p0
.end method

.method public getTranScreenshotSupport()I
    .registers 3

    .line 619
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_SCREENSHOT_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranScreenshotSupport()I

    move-result p0

    return p0
.end method

.method public getTranSensorIrLedBack()Ljava/lang/String;
    .registers 3

    .line 713
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_SENSOR_IR_LED_BACK"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSensorIrLedBack()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSliderPanelSupport()I
    .registers 3

    .line 729
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_SLIDER_PANEL_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSliderPanelSupport()I

    move-result p0

    return p0
.end method

.method public getTranSmartRecognitionSupport()I
    .registers 3

    .line 899
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_SMART_RECOGNITION_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSmartRecognitionSupport()I

    move-result p0

    return p0
.end method

.method public getTranSmartpanelSupport()I
    .registers 3

    .line 721
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_SMARTPANEL_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSmartpanelSupport()I

    move-result p0

    return p0
.end method

.method public getTranSpaceSaver()Ljava/lang/String;
    .registers 1

    .line 171
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSpaceSaver()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSplitScreenSnapModeSupport()I
    .registers 1

    .line 235
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSplitScreenSnapModeSupport()I

    move-result p0

    return p0
.end method

.method public getTranSplitScreenTBSupport()I
    .registers 1

    .line 227
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSplitScreenTBSupport()I

    move-result p0

    return p0
.end method

.method public getTranStkAthenaSupport()I
    .registers 1

    .line 251
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranStkAthenaSupport()I

    move-result p0

    return p0
.end method

.method public getTranStkMpesaSupport()I
    .registers 1

    .line 259
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranStkMpesaSupport()I

    move-result p0

    return p0
.end method

.method public getTranSwMarket()Ljava/lang/String;
    .registers 1

    .line 163
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranSwMarket()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranUltraPowerSaveSupport()I
    .registers 3

    .line 787
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_ULTRA_POWER_SAVE_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranUltraPowerSaveSupport()I

    move-result p0

    return p0
.end method

.method public getTranVendorHrSpo2Timemillis()Ljava/lang/String;
    .registers 3

    .line 636
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_VENDOR_HR_SPO2_TIMEMILLIS"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVendorHrSpo2Timemillis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranVendorVib30Support()Z
    .registers 3

    .line 697
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_VENDOR_VIB30_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVendorVib30Support()Z

    move-result p0

    return p0
.end method

.method public getTranVibrate10Support()Z
    .registers 3

    .line 851
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_VIBRATE10_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVibrate10Support()Z

    move-result p0

    return p0
.end method

.method public getTranVibrate20Support()Z
    .registers 3

    .line 763
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    const-string v1, "TRAN_VIBRATE20_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTranVibrate20Support()Z

    move-result p0

    return p0
.end method

.method public getTrancareUxdetectorRestSupport()I
    .registers 1

    .line 283
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getTrancareUxdetectorRestSupport()I

    move-result p0

    return p0
.end method

.method public getZeroScreenAiCardSupport()I
    .registers 3

    .line 930
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    const-string v1, "TRAN_ZEROSCREEN_AICARD_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->getZeroScreenAiCardSupport()I

    move-result p0

    return p0
.end method

.method public isAssistOnlineSupport()Z
    .registers 1

    .line 331
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isAssistOnlineSupport()Z

    move-result p0

    return p0
.end method

.method public isFaceIdHalSupport()Z
    .registers 1

    .line 50
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isFaceIdHalSupport()Z

    move-result p0

    return p0
.end method

.method public isOmdHifiSupport()Z
    .registers 1

    .line 58
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isOmdHifiSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneAnimation60hzSupport()Z
    .registers 1

    .line 355
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneAnimation60hzSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSummarySupport()Z
    .registers 1

    .line 339
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneSummarySupport()Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSupport()Z
    .registers 1

    .line 347
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAiphoneSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistHighpowerWakeupSupport()Z
    .registers 1

    .line 387
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistHighpowerWakeupSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistPowerWakeupSupport()Z
    .registers 1

    .line 403
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistPowerWakeupSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistSupport()Z
    .registers 1

    .line 323
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVoiceprintDynamicHotwordSupport()Z
    .registers 1

    .line 379
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVoiceprintDynamicHotwordSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowDualmicSupport()Z
    .registers 1

    .line 395
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVowDualmicSupport()Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowSupport()Z
    .registers 1

    .line 363
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranAssistVowSupport()Z

    move-result p0

    return p0
.end method

.method public isTranDragdropSupport()Z
    .registers 3

    .line 663
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_DRAGDROP_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranDragdropSupport()Z

    move-result p0

    return p0
.end method

.method public isTranRealvib05Support()Z
    .registers 3

    .line 867
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_REALVIB05_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranRealvib05Support()Z

    move-result p0

    return p0
.end method

.method public isTranVibrate30ZSupport()Z
    .registers 3

    .line 771
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    const-string v1, "TRAN_VIBRATE30_Z_SUPPORT"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getExistenceService(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isTranVibrate30ZSupport()Z

    move-result p0

    return p0
.end method

.method public isVendorHifiSupport()Z
    .registers 1

    .line 66
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranBuildExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;->isVendorHifiSupport()Z

    move-result p0

    return p0
.end method
