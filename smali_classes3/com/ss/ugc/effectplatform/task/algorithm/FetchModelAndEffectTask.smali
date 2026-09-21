.class public final Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;
.super Lcom/ss/ugc/effectplatform/task/SyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$Companion;


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final config:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

.field private final wrappedTask:Lcom/ss/ugc/effectplatform/task/SyncTask;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->Companion:Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/task/SyncTask;Lcom/ss/ugc/effectplatform/bridge/EffectFetcherArguments;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 7

    const-string p2, "buildInAssetsManager"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "algorithmModelCache"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "config"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/SyncTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->wrappedTask:Lcom/ss/ugc/effectplatform/task/SyncTask;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    if-eqz p1, :cond_25

    .line 39
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->getListener()Lcom/ss/ugc/effectplatform/task/SyncTaskListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ss/ugc/effectplatform/task/SyncTask;->setListener(Lcom/ss/ugc/effectplatform/task/SyncTaskListener;)V

    :cond_25
    return-void
.end method

.method private final getListener()Lcom/ss/ugc/effectplatform/task/SyncTaskListener;
    .registers 2

    .line 103
    new-instance v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$getListener$1;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask$getListener$1;-><init>(Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;)V

    return-object v0
.end method


# virtual methods
.method public final collectNeedDownloadModelsListInternal(I[Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Ljava/util/ArrayList;
    .registers 15

    const-string v0, "decidedConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->modelConfigArbiter:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelAndEffectTask;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;[Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-virtual {v1, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTask;->collectNeedDownloadModelsListInternal(I[Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/LoadedModelList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
