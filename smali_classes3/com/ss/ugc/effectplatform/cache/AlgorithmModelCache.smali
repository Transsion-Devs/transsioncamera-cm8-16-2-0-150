.class public final Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;
.super Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;
.source "SourceFile"


# instance fields
.field private final builtInResourceManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;)V
    .registers 14

    const-string v0, "cacheDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInResourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 18
    invoke-direct/range {v1 .. v9}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, v1, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->builtInResourceManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    return-void
.end method

.method private final clearHistoryModel(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 5

    .line 106
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 107
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->getLruEntryKeys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    sget-object v2, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 110
    invoke-virtual {p0, v1}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->remove(Ljava/lang/String;)Z

    goto :goto_1c

    :cond_38
    return-void
.end method


# virtual methods
.method public final getLocalModelInfoByName(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;
    .registers 11

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->getLruEntryKeys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v4, v3}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_37

    :cond_36
    move-object v2, v1

    :goto_37
    check-cast v2, Ljava/lang/String;

    goto :goto_3b

    :cond_3a
    move-object v2, v1

    :goto_3b
    if-eqz v2, :cond_9a

    .line 35
    :try_start_3d
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object p0

    if-eqz p0, :cond_4f

    invoke-virtual {p0, v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_4b
    .catchall {:try_start_3d .. :try_end_47} :catchall_48

    goto :goto_50

    :catchall_48
    move-exception v0

    move-object p0, v0

    goto :goto_94

    :catch_4b
    move-exception v0

    move-object p0, v0

    move-object p1, v1

    goto :goto_76

    :cond_4f
    move-object p0, v1

    :goto_50
    if-nez p0, :cond_53

    return-object v1

    :cond_53
    const/4 p1, 0x0

    .line 39
    :try_start_54
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 40
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_72

    sget-object v0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->fromFile(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_66} :catch_6c
    .catchall {:try_start_54 .. :try_end_66} :catchall_67

    goto :goto_72

    :catchall_67
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object p0, p1

    goto :goto_94

    :catch_6c
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_76

    .line 45
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->close()V

    return-object v1

    .line 42
    :goto_76
    :try_start_76
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "DiskLruCache"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_82

    :goto_80
    move-object v4, p0

    goto :goto_85

    :cond_82
    const-string p0, ""

    goto :goto_80

    :goto_85
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_91

    if-eqz p1, :cond_90

    .line 45
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->close()V

    :cond_90
    return-object v1

    :catchall_91
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    :goto_94
    if-eqz v1, :cond_99

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->close()V

    :cond_99
    throw p0

    :cond_9a
    return-object v1
.end method

.method public final getLocalModelInfoList()Ljava/util/Map;
    .registers 9

    .line 60
    const-string v0, "DiskLruCacheImpl"

    const-string v1, ""

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 62
    :try_start_9
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->builtInResourceManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    const-string v4, "model"

    invoke-virtual {v3, v4}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 63
    check-cast v3, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->builtInResourceManager:Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "model/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ss/ugc/effectplatform/algorithm/BuiltInResourceManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 65
    check-cast v4, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_78

    .line 67
    :try_start_50
    sget-object v6, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v6, v5}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    move-object v6, v1

    .line 71
    :goto_58
    :try_start_58
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 72
    sget-object v7, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v7, v5}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    sget-object v7, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    invoke-virtual {v7, v1}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->fromFile(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v7

    .line 74
    invoke-virtual {v7, v6}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7, v5}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setVersion(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 76
    invoke-virtual {v7, v5}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setBuiltIn(Z)V

    .line 77
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_77} :catch_78

    goto :goto_44

    :catch_78
    move-exception v1

    .line 82
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v4, "getLocalModelInfoList built in error"

    invoke-virtual {v3, v0, v4, v1}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->getLruEntryKeys()Ljava/util/Set;

    move-result-object v1

    goto :goto_8f

    :catch_8c
    move-exception p0

    goto :goto_d0

    :cond_8e
    move-object v1, v3

    :goto_8f
    if-eqz v1, :cond_cf

    .line 1642
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_95
    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    sget-object v5, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v5, v4}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v6

    if-eqz v6, :cond_b2

    invoke-virtual {v6, v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;

    move-result-object v4

    goto :goto_b3

    :cond_b2
    move-object v4, v3

    :goto_b3
    if-eqz v4, :cond_95

    const/4 v6, 0x0

    .line 90
    invoke-virtual {v4, v6}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v4

    if-eqz v4, :cond_95

    .line 91
    invoke-virtual {v4}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_95

    .line 92
    sget-object v7, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    invoke-virtual {v7, v4}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->fromFile(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v6}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setBuiltIn(Z)V

    .line 94
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_ce} :catch_8c

    goto :goto_95

    :cond_cf
    return-object v2

    .line 99
    :goto_d0
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "error while getLocalModelInfoList"

    invoke-virtual {v1, v0, v3, p0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method protected onLruCacheCreate()V
    .registers 1

    .line 25
    invoke-super {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->onLruCacheCreate()V

    .line 26
    invoke-static {}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->clear()V

    return-void
.end method

.method public final writeModel(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lbytekn/foundation/io/file/FileInputStream;)Ljava/lang/String;
    .registers 15

    const-string v0, "modelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->clearHistoryModel(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    .line 51
    sget-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getFullNameFromModelInfo(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_51

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4b

    .line 55
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object p1

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUri()Ljava/lang/String;

    move-result-object v1

    :cond_37
    move-object v5, v1

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    invoke-static/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->writeInputStreamAsZipToDisk$default(Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_51
    move-object v2, p0

    move-object v4, p3

    .line 54
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object p0

    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUri()Ljava/lang/String;

    move-result-object v1

    :cond_5d
    move-object v5, v1

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->writeInputStreamToDisk$default(Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
