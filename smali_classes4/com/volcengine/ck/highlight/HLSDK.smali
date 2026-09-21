.class public final Lcom/volcengine/ck/highlight/HLSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

.field private static final TAG:Ljava/lang/String; = "HLSDK"

.field public static config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

.field private static extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

.field private static extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/HLSDK;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/HLSDK;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)",
            "Lcom/volcengine/ck/highlight/data/HLExtractorResult;"
        }
    .end annotation

    const-string p0, "requirement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    if-nez p0, :cond_14

    const-string p0, "extractHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_14
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->getTimeExtractor()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;->extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    return-object p0
.end method

.method public final getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;
    .registers 1

    .line 29
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "config"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTemplateFinder()Lcom/volcengine/ck/highlight/api/ITemplateFinder;
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getTemplateFinder()Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    move-result-object p0

    return-object p0
.end method

.method public final init(Landroid/app/Application;Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/volcengine/ckbase/singleton/AppSingleton;->INSTANCE:Lcom/volcengine/ckbase/singleton/AppSingleton;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/volcengine/ckbase/singleton/AppSingleton;->bindInstance(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1.0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/librarian/Librarian;->init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/librarian/LibrarianMonitor;)V

    .line 34
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->Companion:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;->loadLibrary()V

    .line 35
    invoke-virtual {p0, p2}, Lcom/volcengine/ck/highlight/HLSDK;->setConfig(Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V

    .line 36
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getResourceFinder()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IHLResourceFinder;->findResourceFromAsset()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/assetManager_jni/AssetManagerHolder;->setAssetManager(Landroid/content/res/AssetManager;)V

    .line 39
    :cond_3b
    new-instance v4, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    invoke-direct {v4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;-><init>()V

    .line 40
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getResourceFinder()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IHLResourceFinder;->provideGraphConfig()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->setGraph(Ljava/lang/String;)V

    .line 42
    new-instance v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    .line 44
    new-instance v5, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    invoke-direct {v5, p1, v4}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;-><init>(Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)V

    .line 45
    new-instance v6, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;

    const/16 p0, 0x64

    invoke-direct {v6, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MemoryCache;-><init>(I)V

    .line 46
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getResourceFinder()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IHLResourceFinder;->provideModelPath()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getResourceFinder()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IHLResourceFinder;->provideLicensePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 42
    invoke-direct/range {v3 .. v9}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Lcom/bytedance/ies/mediaprocessors/extractor_jni/CacheAdapter;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/volcengine/ck/highlight/HLSDK;->extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    .line 50
    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->init()I

    move-result p0

    .line 51
    const-string p1, "init result: "

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HLSDK"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    sget-object p1, Lcom/volcengine/ck/highlight/HLSDK;->extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    if-nez p1, :cond_8e

    const-string p1, "extractor"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8e
    move-object v2, p1

    :goto_8f
    invoke-direct {p0, v2, p2}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V

    sput-object p0, Lcom/volcengine/ck/highlight/HLSDK;->extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    return-void
.end method

.method public final recognize(III[B)Lcom/volcengine/ck/highlight/data/HLResult;
    .registers 5

    const-string p0, "bytes"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    if-nez p0, :cond_f

    const-string p0, "extractHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->recognizeByteArray(III[B)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    return-object p0
.end method

.method public final recognize(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ")",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    const-string p0, "media"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/volcengine/ck/highlight/utils/ExtKt;->isImage(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "extractHelper"

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    if-nez p0, :cond_16

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v0, p0

    :goto_17
    invoke-virtual {v0, p1}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->recognizeImage(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 61
    :cond_1c
    invoke-static {p1}, Lcom/volcengine/ck/highlight/utils/ExtKt;->isVideo(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Z

    move-result p0

    if-eqz p0, :cond_30

    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->extractHelper:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    if-nez p0, :cond_2a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v0, p0

    :goto_2b
    invoke-virtual {v0, p1}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->recognizeVideo(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 62
    :cond_30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .registers 1

    return-void
.end method

.method public final setConfig(Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sput-object p1, Lcom/volcengine/ck/highlight/HLSDK;->config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    return-void
.end method
