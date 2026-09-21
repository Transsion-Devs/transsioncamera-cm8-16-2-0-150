.class public final Lcom/ss/ugc/effectplatform/EffectPlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/EffectPlatform$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/EffectPlatform$Companion;

# The value of this static final field might be set in the static constructor
.field private static final SDK_TAG:Ljava/lang/String; = "EffectPlatform"


# instance fields
.field private final algorithmRepository$delegate:Lkotlin/Lazy;

.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final effectListRepository$delegate:Lkotlin/Lazy;

.field private final effectListStore$delegate:Lkotlin/Lazy;

.field private final effectRepository$delegate:Lkotlin/Lazy;

.field private final resourceRepository$delegate:Lkotlin/Lazy;

.field private final thirdPartyEffectRepository$delegate:Lkotlin/Lazy;

.field private final userEffectRepository$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/EffectPlatform$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectPlatform;->Companion:Lcom/ss/ugc/effectplatform/EffectPlatform$Companion;

    .line 1071
    const-string v0, "EffectPlatform"

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectPlatform;->SDK_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 3

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 80
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$effectRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$effectRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->effectRepository$delegate:Lkotlin/Lazy;

    .line 81
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->effectListRepository$delegate:Lkotlin/Lazy;

    .line 82
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$userEffectRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$userEffectRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->userEffectRepository$delegate:Lkotlin/Lazy;

    .line 83
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->algorithmRepository$delegate:Lkotlin/Lazy;

    .line 89
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$thirdPartyEffectRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$thirdPartyEffectRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->thirdPartyEffectRepository$delegate:Lkotlin/Lazy;

    .line 92
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatform$resourceRepository$2;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$resourceRepository$2;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->resourceRepository$delegate:Lkotlin/Lazy;

    .line 93
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListStore$2;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatform$effectListStore$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->effectListStore$delegate:Lkotlin/Lazy;

    .line 96
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatform;->checkConfiguration(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 97
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v0

    if-nez v0, :cond_68

    .line 98
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getExecutor()Lbytekn/foundation/concurrent/executor/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->createTaskManager(Lbytekn/foundation/concurrent/executor/ExecutorService;)Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->setTaskManager(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    .line 100
    :cond_68
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatform;->initCache(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 102
    sget-object p0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformType()Lcom/ss/ugc/effectplatform/util/PlatformType;

    move-result-object p0

    sget-object v0, Lcom/ss/ugc/effectplatform/util/PlatformType;->ANDROID:Lcom/ss/ugc/effectplatform/util/PlatformType;

    if-ne p0, v0, :cond_90

    .line 103
    sget-object p0, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->getIMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getMonitorReport()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 104
    sget-object p0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    new-instance p1, Lcom/ss/ugc/effectplatform/EffectPlatform$1;

    invoke-direct {p1}, Lcom/ss/ugc/effectplatform/EffectPlatform$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->setEncryptor(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;)V

    :cond_90
    return-void
.end method

.method private final checkConfiguration(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 10

    if-eqz p1, :cond_81

    .line 121
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 124
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 127
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_69

    .line 130
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_57

    .line 131
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    .line 132
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 133
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    sget-object v3, Lcom/ss/ugc/effectplatform/EffectPlatform;->SDK_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache directory error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 136
    :cond_57
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 137
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAlgorithmDir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    :cond_68
    return-void

    .line 128
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EffectConfiguration Error! Cache directory error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EffectConfiguration Error! Not set json convert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EffectConfiguration Error! Not set host !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EffectConfiguration Error! Not set configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createTaskManager(Lbytekn/foundation/concurrent/executor/ExecutorService;)Lcom/ss/ugc/effectplatform/task/TaskManager;
    .registers 2

    .line 142
    new-instance p0, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_d

    .line 143
    :cond_8
    new-instance p1, Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    invoke-direct {p1}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;-><init>()V

    :goto_d
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->setExecutor(Lbytekn/foundation/concurrent/executor/ExecutorService;)Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->build()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object p0

    return-object p0
.end method

.method private final getAlgorithmRepository()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->algorithmRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    return-object p0
.end method

.method private final getThirdPartyEffectRepository()Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->thirdPartyEffectRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    return-object p0
.end method

.method private final initCache(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 9

    .line 148
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object p0

    .line 149
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 150
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    .line 151
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 152
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    sget-object v2, Lcom/ss/ugc/effectplatform/EffectPlatform;->SDK_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache directory error"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 155
    :cond_41
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCache()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    .line 156
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 157
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;

    invoke-direct {v1, p1}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    invoke-virtual {v0, p0, v1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->setCache(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/ICache;)V

    .line 159
    :cond_5b
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCache()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;

    move-result-object p0

    invoke-static {p1, p0}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_67
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCache()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-static {p1}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->getValue(Lbytekn/foundation/concurrent/SharedReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ugc/effectplatform/cache/ICache;

    invoke-virtual {v0, p0, p1}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->setCache(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/ICache;)V

    return-void
.end method


# virtual methods
.method public final downloadThirdPartyEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 4

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getThirdPartyEffectRepository()Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->downloadThirdPartyEffect(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    return-void
.end method

.method public final fetchThirdPartyEffectInfo(Ljava/lang/String;Ljava/util/Map;Lkotlin/reflect/KClass;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V
    .registers 6

    const-string/jumbo v0, "urlPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getThirdPartyEffectRepository()Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->fetchThirdPartyEffectInfo(Ljava/lang/String;Ljava/util/Map;Lkotlin/reflect/KClass;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V

    return-void
.end method

.method public final getEffectConfig()Lcom/ss/ugc/effectplatform/EffectConfig;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-object p0
.end method

.method public final isThirdPartyEffectReady(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z
    .registers 3

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getThirdPartyEffectRepository()Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->isThirdPartyEffectDownloaded(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1048
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getAlgorithmRepository()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->areRequirementsReady(Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
