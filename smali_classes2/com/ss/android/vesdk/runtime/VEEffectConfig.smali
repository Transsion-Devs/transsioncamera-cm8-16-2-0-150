.class public Lcom/ss/android/vesdk/runtime/VEEffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCacheDir:Ljava/lang/String;

.field private static sEffectAssetManager:Landroid/content/res/AssetManager;

.field private static sFinder:Lcom/bef/effectsdk/ResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    .line 23
    const-class v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    .line 25
    new-instance v0, Lcom/bef/effectsdk/FileResourceFinder;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bef/effectsdk/FileResourceFinder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    .line 26
    sput-object v1, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sCacheDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 159
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1, p0, p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeConfigEffect(ZLandroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableAlgoParamIsForce(ZZ)V
    .registers 2

    .line 283
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeEnableAlgoParamisForce(ZZ)V

    return-void
.end method

.method public static enableAssetManager(Landroid/content/res/AssetManager;)Z
    .registers 1

    .line 63
    sput-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sEffectAssetManager:Landroid/content/res/AssetManager;

    const/4 p0, 0x1

    return p0
.end method

.method public static enableEffectAudioManagerCallback(Z)V
    .registers 1

    .line 403
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeEnableEffectAudioManagerCallback(Z)V

    return-void
.end method

.method public static enableEffectRT(Z)Z
    .registers 1

    .line 146
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeEnableEffectRT(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static enableMakeupSegmentation(Z)V
    .registers 1

    .line 385
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeEnableMakeupSegmentation(Z)V

    return-void
.end method

.method public static getABConfigList()Ljava/lang/String;
    .registers 1

    .line 228
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeGetABConfigList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getNativeFinder(J)J
    .registers 3

    .line 336
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_9

    .line 339
    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide p0

    return-wide p0

    .line 337
    :cond_9
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/4 p1, -0x1

    const-string v0, "Error call finder related interface."

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static native nativeConfigEffect(ZLandroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEnableAlgoParamisForce(ZZ)V
.end method

.method private static native nativeEnableEffectAudioManagerCallback(Z)V
.end method

.method private static native nativeEnableEffectRT(Z)V
.end method

.method private static native nativeEnableMakeupSegmentation(Z)V
.end method

.method private static native nativeGetABConfigList()Ljava/lang/String;
.end method

.method private static native nativeSetABConfigValue(Ljava/lang/String;ZIFLjava/lang/String;I)V
.end method

.method private static native nativeSetABbUseBuildinAmazing(Z)V
.end method

.method private static native nativeSetCacheDir(Ljava/lang/String;)V
.end method

.method private static native nativeSetEffectAsynAPI(Z)V
.end method

.method private static native nativeSetEffectForceDetectFace(Z)V
.end method

.method private static native nativeSetEffectJsonConfig(Ljava/lang/String;)V
.end method

.method private static native nativeSetEffectLogLevel(I)V
.end method

.method private static native nativeSetEffectMaxMemoryCache(I)V
.end method

.method private static native nativeSetEffectSyncTimeDomain(Z)V
.end method

.method private static native nativeSetEnableStickerAmazing(Z)V
.end method

.method private static native nativeSetShareDir(Ljava/lang/String;)V
.end method

.method private static native nativeUseNewEffectAlgorithmApi(Z)V
.end method

.method private static native nativesetEnableStickerReleaseTexture(Z)V
.end method

.method public static releaseNativeFinder(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    .line 350
    sget-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_e
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_38

    .line 356
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeFinder effectHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->release(J)V

    return-void

    .line 354
    :cond_38
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/4 p1, -0x1

    const-string v0, "Error call finder related interface."

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static setABConfigValue(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 15

    if-eqz p2, :cond_4a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_33

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    goto :goto_5c

    .line 264
    :cond_c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5c

    const/4 v4, 0x0

    .line 265
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetABConfigValue(Ljava/lang/String;ZIFLjava/lang/String;I)V

    return-void

    :cond_1c
    move-object v6, p0

    move v11, p2

    .line 259
    instance-of p0, p1, Ljava/lang/Float;

    if-nez p0, :cond_26

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_5c

    .line 260
    :cond_26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetABConfigValue(Ljava/lang/String;ZIFLjava/lang/String;I)V

    return-void

    :cond_33
    move-object v6, p0

    move v11, p2

    .line 254
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3d

    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_5c

    .line 255
    :cond_3d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetABConfigValue(Ljava/lang/String;ZIFLjava/lang/String;I)V

    return-void

    :cond_4a
    move-object v6, p0

    move v11, p2

    .line 249
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_5c

    .line 250
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetABConfigValue(Ljava/lang/String;ZIFLjava/lang/String;I)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public static setABbUseBuildinAmazing(Z)Z
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetABbUseBuildinAmazing(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setCacheDir(Ljava/lang/String;)V
    .registers 1

    .line 33
    sput-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sCacheDir:Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetCacheDir(Ljava/lang/String;)V

    return-void
.end method

.method public static setEffectAsynAPI(Z)V
    .registers 1

    .line 217
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectAsynAPI(Z)V

    return-void
.end method

.method public static setEffectForceDetectFace(Z)V
    .registers 1

    .line 170
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectForceDetectFace(Z)V

    return-void
.end method

.method public static setEffectJsonConfig(Ljava/lang/String;)Z
    .registers 1

    .line 119
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectJsonConfig(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setEffectLogLevel(I)Z
    .registers 1

    .line 91
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectLogLevel(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setEffectMaxMemoryCache(I)Z
    .registers 1

    .line 105
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectMaxMemoryCache(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setEffectSyncTimeDomain(Z)V
    .registers 1

    .line 181
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEffectSyncTimeDomain(Z)V

    return-void
.end method

.method public static setEnableStickerAmazing(Z)V
    .registers 1

    .line 193
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetEnableStickerAmazing(Z)V

    return-void
.end method

.method public static setEnableStickerReleaseTexture(Z)V
    .registers 1

    .line 205
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativesetEnableStickerReleaseTexture(Z)V

    return-void
.end method

.method public static setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .registers 1

    .line 55
    sput-object p0, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    return-void
.end method

.method public static setShareDir(Ljava/lang/String;)Z
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeSetShareDir(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setUseNewEffectAlgorithmApi(Z)V
    .registers 1

    .line 365
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->nativeUseNewEffectAlgorithmApi(Z)V

    return-void
.end method
