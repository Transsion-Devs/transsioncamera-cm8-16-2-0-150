.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;

.field private static final cache:Lbytekn/foundation/collections/SharedMutableMap;

.field private static final classLock:Lbytekn/foundation/concurrent/lock/Lock;

.field private static final hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 22
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;

    .line 25
    new-instance v0, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 27
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->cache:Lbytekn/foundation/collections/SharedMutableMap;

    .line 29
    new-instance v0, Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    invoke-direct {v0, v3}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clear()V
    .registers 3

    .line 137
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 138
    :try_start_5
    sget-object v1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->cache:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1}, Lbytekn/foundation/collections/SharedMutableMap;->clear()V

    .line 139
    sget-object v1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->setValue(Z)V

    .line 140
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw v1
.end method

.method public static final hasBuiltCache()Z
    .registers 1

    .line 133
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public static final isModelReady(Ljava/lang/String;)Z
    .registers 14

    .line 99
    sget-object v0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformType()Lcom/ss/ugc/effectplatform/util/PlatformType;

    move-result-object v0

    sget-object v1, Lcom/ss/ugc/effectplatform/util/PlatformType;->PC:Lcom/ss/ugc/effectplatform/util/PlatformType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    if-eqz p0, :cond_114

    .line 103
    sget-object v1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 103
    :try_start_13
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->cache:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, p0}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_10e

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 104
    const-string v1, "model: "

    if-nez v0, :cond_41

    .line 105
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not in cache!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AlgorithmModelInfoMemoryCache"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    .line 108
    :cond_41
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->getLocalModelInfo()Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v3

    .line 109
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->getServerModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v0

    .line 110
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 111
    sget-object v5, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " version not match. local version: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", server version: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "AlgorithmModelInfoMemoryCache"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    .line 114
    :cond_89
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getBuiltIn()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_91

    return v5

    .line 117
    :cond_91
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v6

    if-eq v4, v6, :cond_cd

    .line 118
    sget-object v7, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " size not match. local size: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getSize()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", server size: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "AlgorithmModelInfoMemoryCache"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    .line 121
    :cond_cd
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10d

    .line 122
    sget-object v6, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " md5 not match. local md5: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getMD5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", server md5: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "AlgorithmModelInfoMemoryCache"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_10d
    return v5

    :catchall_10e
    move-exception v0

    move-object p0, v0

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_114
    return v2
.end method

.method public static final writeModelInfo(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 7

    const-string v0, "modelInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformType()Lcom/ss/ugc/effectplatform/util/PlatformType;

    move-result-object v0

    sget-object v1, Lcom/ss/ugc/effectplatform/util/PlatformType;->PC:Lcom/ss/ugc/effectplatform/util/PlatformType;

    if-ne v0, v1, :cond_10

    return-void

    .line 63
    :cond_10
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->fromFile(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setName(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    move-object v2, v3

    :cond_26
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setMD5(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setSize(I)V

    .line 68
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->setBuiltIn(Z)V

    .line 70
    new-instance v2, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;

    invoke-direct {v2, v1, p0}, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;-><init>(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    .line 71
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 72
    :try_start_45
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "AlgorithmModelInfoMemoryCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "model: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " write in cache!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->cache:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_69
    .catchall {:try_start_45 .. :try_end_69} :catchall_6d

    .line 8
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :catchall_6d
    move-exception v0

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw v0
.end method


# virtual methods
.method public final buildCache(Lcom/ss/ugc/effectplatform/model/LoadedModelList;Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;)V
    .registers 7

    const-string p0, "serverModelInfos"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "localCache"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/PlatformUtil;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/PlatformUtil;->getPlatformType()Lcom/ss/ugc/effectplatform/util/PlatformType;

    move-result-object p0

    sget-object v0, Lcom/ss/ugc/effectplatform/util/PlatformType;->PC:Lcom/ss/ugc/effectplatform/util/PlatformType;

    if-ne p0, v0, :cond_15

    return-void

    .line 35
    :cond_15
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->getModelInfoList()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_80

    .line 36
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_80

    .line 40
    :cond_23
    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->getLocalModelInfoList()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_7a

    .line 45
    :cond_30
    sget-object p1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {p1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 151
    :try_start_35
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3d
    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    if-eqz v2, :cond_3d

    .line 50
    new-instance v3, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-direct {v3, v2, v0}, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;-><init>(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    .line 51
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->cache:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_68
    move-exception p0

    goto :goto_76

    .line 54
    :cond_6a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_68

    .line 8
    invoke-virtual {p1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 55
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->setValue(Z)V

    return-void

    .line 8
    :goto_76
    invoke-virtual {p1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    .line 42
    :cond_7a
    :goto_7a
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->setValue(Z)V

    return-void

    .line 37
    :cond_80
    :goto_80
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelInfoMemoryCache;->hasBuiltCache:Lbytekn/foundation/concurrent/lock/AtomicBoolean;

    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->setValue(Z)V

    return-void
.end method
