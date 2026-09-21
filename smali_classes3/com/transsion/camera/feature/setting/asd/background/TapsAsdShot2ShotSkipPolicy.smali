.class public Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;
.super Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$8qlqxlcC1EdJE_4lPQMLpzK7zh4(Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;->lambda$needReplace$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)V

    return-void
.end method

.method private synthetic lambda$needReplace$0(Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->getShot2ShotPlatform()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;->isCaptureFull(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decreaseCount(I)V
    .registers 3

    .line 30
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 31
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->decreaseCount(I)V

    return-void

    .line 33
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "decreaseCount[TapsAsdShot2ShotSkipPolicy]: ignore"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public increaseCount(I)V
    .registers 3

    .line 21
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 22
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->increaseCount(I)V

    return-void

    .line 24
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "increaseCount[TapsAsdShot2ShotSkipPolicy]: ignore"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public needReplace(IZZ)I
    .registers 6

    .line 48
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isNeedShotSkipByCTSTest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "needReplace[special] to ALGO_TYPE_NONE."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 52
    :cond_13
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupportDefer()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 53
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda0;-><init>()V

    .line 54
    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;)V

    .line 55
    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    .line 56
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 58
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mSkipToMFLL:Z

    if-eqz p1, :cond_53

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "needReplace[TapsAsdShot2ShotSkipPolicy] to ALGO_TYPE_MFLL."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p0, 0x65

    return p0

    .line 62
    :cond_53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "needReplace[TapsAsdShot2ShotSkipPolicy] to ALGO_TYPE_NONE."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_5b
    return p1

    .line 69
    :cond_5c
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->needReplace(IZZ)I

    move-result p0

    return p0
.end method

.method protected overlayLowMemSpec()V
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->overlayLowMemSpec()V

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyLowMemOverlay:[I

    .line 76
    invoke-static {p0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->overlayLowMemSpec([I)V

    return-void
.end method

.method public resetCount()V
    .registers 2

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 40
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->resetCount()V

    return-void

    .line 42
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resetCount[TapsAsdShot2ShotSkipPolicy]: ignore"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
