.class public Lcom/transsion/hubsdk/api/lighting/TranLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_COUNT_TIME:Ljava/lang/String; = "countTime"

.field private static final TAG:Ljava/lang/String; = "TranLightingManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

.field private mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .registers 3

    .line 341
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->acquireBuffer(I)Landroid/os/SharedMemory;

    move-result-object p0

    return-object p0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .registers 6

    .line 282
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->addEffect(IIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .registers 7

    .line 144
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->addEffect([IIIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .registers 4

    .line 296
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->bindSceneWithCustomEffect([II)V

    return-void
.end method

.method public delEffect(I)Z
    .registers 3

    .line 156
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->delEffect(I)Z

    move-result p0

    return p0
.end method

.method public drawBuffer(I)V
    .registers 3

    .line 345
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->drawBuffer(I)V

    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getAllCustomEffects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getColorIds()[I
    .registers 2

    .line 217
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getColorIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 3

    .line 319
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0

    return-object p0
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 4

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0

    return-object p0
.end method

.method public getEffectIdList()[I
    .registers 2

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getEffectIdList()[I

    move-result-object p0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .registers 2

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .registers 2

    .line 323
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getPendingCustomEffectList()[I

    move-result-object p0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 3

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;
    .registers 3

    .line 349
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 350
    iget-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    :cond_11
    return-object p1

    .line 352
    :cond_12
    const-string p1, "TranLightingManager"

    const-string v0, "TranAospLightingManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    :cond_24
    return-object p1
.end method

.method public lockLightingDisplay(I)Z
    .registers 3

    .line 333
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->lockLightingDisplay(I)Z

    move-result p0

    return p0
.end method

.method public previewEffect(II)V
    .registers 10

    .line 228
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewEffectWithScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .registers 7

    .line 256
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewEffectWithScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public previewOff()V
    .registers 2

    .line 242
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewOff()V

    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .registers 4

    .line 267
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewOffWithScene(ILandroid/os/Bundle;)V

    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 3

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    return-void
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .registers 5

    .line 88
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V

    return-void
.end method

.method public setLedMusicPlay(Z)V
    .registers 3

    .line 327
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setLedMusicPlay(Z)V

    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .registers 3

    .line 75
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V

    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .registers 4

    .line 100
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V

    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .registers 4

    .line 201
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setSceneParam(ILandroid/os/Bundle;)V

    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .registers 7

    .line 178
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->startScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public startScene(ILandroid/os/Bundle;)V
    .registers 10

    .line 182
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->startScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public stopScene(I)V
    .registers 3

    .line 197
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->stopScene(I)V

    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .registers 7

    .line 205
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->triggerScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public triggerScene(ILandroid/os/Bundle;)V
    .registers 10

    .line 209
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->triggerScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public unlockEffect()V
    .registers 2

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unlockEffect()V

    return-void
.end method

.method public unlockLightingDisplay(I)V
    .registers 3

    .line 337
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unlockLightingDisplay(I)V

    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 3

    .line 120
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    return-void
.end method
