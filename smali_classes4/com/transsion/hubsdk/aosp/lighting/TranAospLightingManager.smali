.class public Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .registers 6

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .registers 3

    return-void
.end method

.method public delEffect(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public drawBuffer(I)V
    .registers 2

    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorIds()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectIdList()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public lockLightingDisplay(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .registers 6

    return-void
.end method

.method public previewOff()V
    .registers 1

    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 2

    return-void
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .registers 4

    return-void
.end method

.method public setLedMusicPlay(Z)V
    .registers 2

    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .registers 2

    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .registers 3

    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .registers 6

    return-void
.end method

.method public stopScene(I)V
    .registers 2

    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .registers 6

    return-void
.end method

.method public unlockEffect()V
    .registers 1

    return-void
.end method

.method public unlockLightingDisplay(I)V
    .registers 2

    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 2

    return-void
.end method
