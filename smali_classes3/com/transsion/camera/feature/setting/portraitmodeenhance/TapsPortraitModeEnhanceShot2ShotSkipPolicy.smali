.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;
.super Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$moPBe8He6E7NVFmEiymePeRinOE(Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;->lambda$needSkipAlgo$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TAPS_PME_Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;-><init>()V

    return-void
.end method

.method private synthetic lambda$needSkipAlgo$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;->getShot2ShotPlatform()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->isCaptureFull(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public increaseCount()V
    .registers 1

    return-void
.end method

.method public needSkipAlgo()Z
    .registers 4

    .line 23
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>()V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/TapsPortraitModeEnhanceShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[needSkipAlgo] needSkip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public resetCount()V
    .registers 1

    return-void
.end method
