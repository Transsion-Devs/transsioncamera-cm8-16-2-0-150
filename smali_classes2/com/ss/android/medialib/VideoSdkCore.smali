.class public final Lcom/ss/android/medialib/VideoSdkCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/VideoSdkCore$ProductType;
    }
.end annotation


# static fields
.field public static APPLICATION_CONTEXT:Landroid/content/Context; = null

.field public static final PRODUCT_AWEME:I = 0x0

.field public static final PRODUCT_HOTSOON:I = 0x1

.field public static final PRODUCT_OTHER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoSdkCore"

.field private static inited:Z = false

.field private static sFinder:Lcom/bef/effectsdk/ResourceFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/bef/effectsdk/FileResourceFinder;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bef/effectsdk/FileResourceFinder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    .line 40
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEffectAudioManagerCallback(Z)V
    .registers 2

    .line 128
    const-string v0, "enableEffectAudioManagerCallback"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static enableGLES3(Z)V
    .registers 2

    .line 73
    const-string v0, "GLES3"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static enableMakeupSegmentation(Z)V
    .registers 2

    .line 121
    const-string v0, "enableMakeupSegmentation"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getNativeFinder(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_e

    .line 179
    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 182
    :cond_e
    sget-object v2, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-nez v2, :cond_1a

    .line 183
    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "Error call finder related interface."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 186
    :cond_1a
    invoke-interface {v2, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSdkVersionCode()Ljava/lang/String;
    .registers 1

    .line 158
    const-string v0, "VersionCode"

    invoke-static {v0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersionName()Ljava/lang/String;
    .registers 1

    .line 154
    const-string v0, "VersionName"

    invoke-static {v0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 47
    sget-boolean v0, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    if-nez v0, :cond_22

    .line 48
    const-class v0, Lcom/ss/android/medialib/VideoSdkCore;

    monitor-enter v0

    .line 49
    :try_start_7
    sget-boolean v1, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    if-nez v1, :cond_1e

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetAssertManagerFromJava(Landroid/content/res/AssetManager;)V

    const/4 p0, 0x1

    .line 53
    sput-boolean p0, Lcom/ss/android/medialib/VideoSdkCore;->inited:Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 55
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1c

    throw p0

    :cond_22
    return-void
.end method

.method private static native nativeGetString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetAssertManagerFromJava(Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetBoolean(Ljava/lang/String;Z)V
.end method

.method private static native nativeSetInt(Ljava/lang/String;I)V
.end method

.method private static native nativeSetString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static releaseNativeFinder(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    .line 197
    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "getNativeFinder effectHandler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_e
    sget-object v0, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-nez v0, :cond_1a

    .line 201
    sget-object p0, Lcom/ss/android/medialib/VideoSdkCore;->TAG:Ljava/lang/String;

    const-string p1, "Error call finder related interface."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_1a
    invoke-interface {v0, p0, p1}, Lcom/bef/effectsdk/ResourceFinder;->release(J)V

    return-void
.end method

.method public static setABbUseBuildinAmazing(Z)V
    .registers 2

    .line 142
    const-string v0, "ABbUseBuildinAmazing"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAmazingShareDir(Ljava/lang/String;)V
    .registers 2

    .line 100
    const-string v0, "AmazingShareDir"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEffectJsonConfig(Ljava/lang/String;)V
    .registers 2

    .line 135
    const-string v0, "EffectJsonConfig"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEffectLogLevel(I)V
    .registers 2

    .line 107
    const-string v0, "EffectLogLevel"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setEffectMaxMemoryCache(I)V
    .registers 2

    .line 114
    const-string v0, "EffectMaxMemoryCache"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnableAssetManager(Z)V
    .registers 2

    .line 149
    const-string v0, "AssertManagerEnable"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setProduct(I)V
    .registers 2

    .line 66
    const-string v0, "Product"

    invoke-static {v0, p0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .registers 2

    .line 83
    sput-object p0, Lcom/ss/android/medialib/VideoSdkCore;->sFinder:Lcom/bef/effectsdk/ResourceFinder;

    .line 87
    const-string p0, "ResourceFinderEnable"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ss/android/medialib/VideoSdkCore;->nativeSetBoolean(Ljava/lang/String;Z)V

    return-void
.end method
