.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;
.super Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;
.source "SourceFile"

# interfaces
.implements Lcom/bef/effectsdk/ResourceFinder;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;

.field private static final TAG:Ljava/lang/String; = "ResourceFinder"

.field private static final modelsNotFoundRecord:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final assetResourceFinder:Lcom/bef/effectsdk/AssetResourceFinder;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private effectHandle:J

.field private final eventListener:Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->modelsNotFoundRecord:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 6

    const-string v0, "algorithmModelCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildInAssetsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;-><init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 31
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->getAppContext()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_39

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "(buildInAssetsManager.ap\u2026ntext).applicationContext"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    .line 32
    new-instance p3, Lcom/bef/effectsdk/AssetResourceFinder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getCacheDir()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/bef/effectsdk/AssetResourceFinder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->assetResourceFinder:Lcom/bef/effectsdk/AssetResourceFinder;

    return-void

    .line 31
    :cond_39
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.content.Context"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final findResourceUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;->findResourceUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final mobModelFound(Ljava/lang/String;)V
    .registers 10

    .line 108
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    if-eqz v1, :cond_1a

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelFind$default(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private final mobModelNotFound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 113
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->modelsNotFoundRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_22

    .line 116
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/ss/ugc/effectplatform/monitor/MobExtensionKt;->mobModelFind(Lcom/ss/ugc/effectplatform/monitor/IMonitorReport;ZLcom/ss/ugc/effectplatform/EffectConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static final modelNotFound(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;->modelNotFound(Ljava/lang/String;)V

    return-void
.end method

.method private final native nativeCreateResourceFinder(J)J
.end method


# virtual methods
.method public createNativeResourceFinder(J)J
    .registers 4

    .line 36
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->loadLibrary()V

    .line 37
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectHandle:J

    .line 39
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->assetResourceFinder:Lcom/bef/effectsdk/AssetResourceFinder;

    invoke-virtual {v0, p1, p2}, Lcom/bef/effectsdk/AssetResourceFinder;->createNativeResourceFinder(J)J

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->nativeCreateResourceFinder(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getBuiltInResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "nameStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v2, "/"
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_24

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    :try_start_e
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    goto :goto_31

    :catchall_21
    move-exception v0

    :goto_22
    move-object p1, v0

    goto :goto_27

    :catchall_24
    move-exception v0

    move-object v1, p1

    goto :goto_22

    :goto_27
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_3a

    move-object p1, v2

    :cond_3a
    check-cast p1, Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x2f

    if-lez v3, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    sget-object v2, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_a8

    .line 98
    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    sget-object v5, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v5, v3}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asset://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_a8
    invoke-super {p0, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->getBuiltInResourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffectHandle()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectHandle:J

    return-wide v0
.end method

.method protected isExactBuiltInResource(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "nameStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v2, "/"
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_24

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    :try_start_e
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    goto :goto_31

    :catchall_21
    move-exception v0

    :goto_22
    move-object p1, v0

    goto :goto_27

    :catchall_24
    move-exception v0

    move-object v1, p1

    goto :goto_22

    :goto_27
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_3a

    move-object p1, v2

    :cond_3a
    check-cast p1, Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 83
    sget-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_92

    .line 84
    check-cast p1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    sget-object v3, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v3, v2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 p0, 0x1

    return p0

    .line 90
    :cond_92
    invoke-super {p0, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onModelFound(Ljava/lang/String;)V
    .registers 3

    const-string v0, "modelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->mobModelFound(Ljava/lang/String;)V

    return-void
.end method

.method protected onModelNotFound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "modelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1, p2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->onModelNotFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->mobModelNotFound(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->effectHandle:J

    .line 46
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->assetResourceFinder:Lcom/bef/effectsdk/AssetResourceFinder;

    invoke-virtual {p0, p1, p2}, Lcom/bef/effectsdk/AssetResourceFinder;->release(J)V

    return-void
.end method
