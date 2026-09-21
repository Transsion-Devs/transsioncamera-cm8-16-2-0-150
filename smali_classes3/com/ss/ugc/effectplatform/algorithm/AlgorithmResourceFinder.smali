.class public Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder$Companion;

.field public static final MD5_ERROR:Ljava/lang/String; = "asset://md5_error"

.field public static final NOT_FOUND:Ljava/lang/String; = "asset://not_found"

.field public static final RESOURCE_MANAGER_NOT_INITIALIZED:Ljava/lang/String; = "asset://not_initialized"

.field public static final TAG:Ljava/lang/String; = "AlgorithmResourceFinder"


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private final buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

.field private final eventListener:Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;Lcom/ss/ugc/effectplatform/listener/IModelDownloadEventListener;)V
    .registers 4

    const-string p3, "algorithmModelCache"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "buildInAssetsManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    return-void
.end method

.method private final checkModelMd5(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 22

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_a7

    .line 65
    invoke-virtual/range {p0 .. p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 66
    sget-object v3, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v3, v1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v3, v0}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getMD5OfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v10, 0x0

    move/from16 v5, p2

    invoke-static {v0, v5, v2, v4, v10}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfigNonBlocking$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object v0

    .line 71
    const-string v11, "AlgorithmResourceFinder"

    if-eqz v0, :cond_49

    :try_start_29
    invoke-virtual {v0, v6}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->getDownloadUrl(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v10
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_49

    :catch_2e
    move-exception v0

    .line 73
    sget-object v4, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v7, "model info not found in model list"

    invoke-virtual {v4, v11, v7, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    sget-object v0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->Companion:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$Companion;->getInstance()Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModelNonBlocking$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;ZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v10

    :cond_49
    :goto_49
    if-nez v10, :cond_5a

    .line 77
    sget-object v12, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "AlgorithmResourceFinder"

    const-string v14, "expected model info not found in model list"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    .line 80
    :cond_5a
    invoke-virtual {v10}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v4, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {v4, v3, v0}, Lcom/ss/ugc/effectplatform/util/TextUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " md5 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expectedMd5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findResourceUri called with nameStr = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], asset://md5_error\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v2, v11, v1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 85
    invoke-virtual {v1, v6, v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->onModelNotFound(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_a7
    return v2
.end method


# virtual methods
.method public findResourceUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "nameStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->getLocalModelInfoByName(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 35
    sget-object p0, Lcom/ss/ugc/effectplatform/util/UriUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/UriUtil;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/UriUtil;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_32
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->isExactBuiltInResource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 39
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->getBuiltInResourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    return-object v1
.end method

.method protected getBuiltInResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "nameStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asset://model/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isExactBuiltInResource(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "nameStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isResourceAvailable(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "nameStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->findResourceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 94
    const-string p1, "asset://md5_error"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string p1, "asset://not_found"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method protected onModelFound(Ljava/lang/String;)V
    .registers 2

    const-string p0, "modelName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onModelNotFound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "modelName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errorMessage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "model not found neither in asset nor disk "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public final readAssetFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->buildInAssetsManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final realFindResourceUri(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string p2, "findResourceUri called with nameStr = ["

    const-string v0, "nameStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findResourceUri() called with nameStr = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlgorithmResourceFinder"

    invoke-virtual {v0, v3, v1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->findResourceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :try_start_28
    invoke-direct {p0, p3, p1, v1}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->checkModelMd5(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 50
    const-string p0, "asset://md5_error"
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception v0

    move-object p1, v0

    .line 53
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], exception hanppens"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4c
    if-nez v1, :cond_6f

    .line 56
    sget-object v5, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], returned result: [asset://not_found]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "AlgorithmResourceFinder"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 57
    const-string p0, "asset://not_found"

    return-object p0

    .line 59
    :cond_6f
    sget-object p1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], returned result: ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->onModelFound(Ljava/lang/String;)V

    return-object v1
.end method
