.class public Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;
.super Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$Y9Pke-xFQ_zVdHBUcQHCFYnedak(Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;->lambda$needSkipAlgo$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TAGS_MSB_Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;-><init>()V

    return-void
.end method

.method private synthetic lambda$needSkipAlgo$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimeBodyShot2ShotSkipPolicy;->getShot2ShotPlatform()I

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

    .line 25
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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
