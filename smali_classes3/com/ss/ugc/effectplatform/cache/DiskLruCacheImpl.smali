.class public abstract Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/cache/ICache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl$Companion;


# instance fields
.field private final allowListRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

.field private final appVersion:I

.field private final cacheDir:Ljava/lang/String;

.field private final classLock:Lbytekn/foundation/concurrent/lock/Lock;

.field private diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

.field private final maxSize:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->Companion:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)V
    .registers 8

    const-string v0, "cacheDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    iput p2, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->appVersion:I

    iput p3, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->valueCount:I

    iput-wide p4, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->maxSize:J

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->allowListRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    .line 29
    new-instance p1, Lbytekn/foundation/concurrent/SharedReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

    .line 30
    new-instance p1, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {p1}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_5

    const/4 p2, 0x0

    :cond_5
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_b

    const/4 p3, 0x1

    :cond_b
    move v3, p3

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_11

    const/4 p6, 0x0

    :cond_11
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move-object v6, p6

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)V

    return-void
.end method

.method public static synthetic writeInputStreamAsZipToDisk$default(Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;
    .registers 16

    if-nez p8, :cond_18

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_8

    const-wide/16 p4, 0x0

    :cond_8
    move-wide v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_e

    const/4 p6, 0x0

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 177
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->writeInputStreamAsZipToDisk(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 0
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: writeInputStreamAsZipToDisk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic writeInputStreamToDisk$default(Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;
    .registers 16

    if-nez p8, :cond_18

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_8

    const-wide/16 p4, 0x0

    :cond_8
    move-wide v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_e

    const/4 p6, 0x0

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->writeInputStreamToDisk(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 0
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: writeInputStreamToDisk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addEntryToCache(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->addEntryToCache(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final checkDiskLruCache()Z
    .registers 1

    .line 82
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final getCacheDir()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method protected final getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
    .registers 10

    .line 34
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 35
    :try_start_5
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_74

    goto :goto_22

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_80

    .line 36
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->onLruCacheCreate()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_1f

    .line 37
    :try_start_25
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    sget-object v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    iget v4, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->appVersion:I

    iget v5, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->valueCount:I

    iget-wide v6, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->maxSize:J

    iget-object v8, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->allowListRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    invoke-virtual/range {v2 .. v8}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->open(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3c

    goto :goto_47

    :catchall_3c
    move-exception v0

    :try_start_3d
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :goto_47
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 41
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v4, "DiskLruCacheImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DiskLruCache.open fails, ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 43
    :cond_68
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v0, 0x0

    :cond_71
    invoke-static {v2, v0}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    .line 45
    :cond_74
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->diskLruCacheInternal:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
    :try_end_7c
    .catchall {:try_start_3d .. :try_end_7c} :catchall_1f

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object p0

    :goto_80
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method protected onLruCacheCreate()V
    .registers 3

    .line 280
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is creating"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DiskLruCacheImpl"

    invoke-virtual {v0, v1, p0}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    :try_start_c
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return v1

    .line 244
    :goto_1a
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DiskLruCacheImpl"

    invoke-virtual {v0, v2, p1, p0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method protected final writeInputStreamAsZipToDisk(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;)Lkotlin/Pair;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "editor in currently editing!, key: "

    const-string v4, ", actual md5: "

    const-string v5, " md5 not match! expected md: "

    const-string/jumbo v6, "write: "

    const-string v7, "key"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "modelStream"

    move-object/from16 v10, p2

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v8}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_unzip"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    move-object v11, v8

    .line 183
    :try_start_5a
    sget-object v8, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    const/16 v14, 0xc

    const/4 v15, 0x0

    move-object v13, v11

    const-wide/16 v11, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    invoke-static/range {v8 .. v15}, Lcom/ss/ugc/effectplatform/util/FileUtils;->streamToFile$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)J

    move-object v10, v8

    .line 184
    invoke-virtual {v3, v9, v7}, Lbytekn/foundation/io/file/FileManager;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    invoke-virtual {v3, v7}, Lbytekn/foundation/io/file/FileManager;->readDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_17f

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_80

    goto :goto_82

    :cond_80
    move-object/from16 v8, v16

    :goto_82
    if-eqz v8, :cond_17f

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbytekn/foundation/io/file/FileMeta;

    if-eqz v8, :cond_17f

    .line 186
    invoke-virtual {v8}, Lbytekn/foundation/io/file/FileMeta;->getAbsolutePath()Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v8

    invoke-virtual {v3, v8}, Lbytekn/foundation/io/file/FileManager;->openFileInputStream(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileInputStream;

    move-result-object v8

    if-eqz v8, :cond_19a

    .line 188
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v12

    if-eqz v12, :cond_aa

    invoke-virtual {v12, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    move-result-object v12
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a1} :catch_a5
    .catchall {:try_start_5a .. :try_end_a1} :catchall_a2

    goto :goto_ac

    :catchall_a2
    move-exception v0

    goto/16 :goto_1cb

    :catch_a5
    move-exception v0

    move-object/from16 v12, v16

    goto/16 :goto_1aa

    :cond_aa
    move-object/from16 v12, v16

    :goto_ac
    if-eqz v12, :cond_14c

    .line 190
    :try_start_ae
    new-instance v13, Lbytekn/foundation/io/file/TotalLengthOutputStream;

    .line 191
    invoke-virtual {v12, v11}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v11

    .line 190
    invoke-direct {v13, v11}, Lbytekn/foundation/io/file/TotalLengthOutputStream;-><init>(Lbytekn/foundation/io/file/FileOutputStream;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b7} :catch_147
    .catchall {:try_start_ae .. :try_end_b7} :catchall_a2

    move-object/from16 v15, p6

    move-object v11, v8

    move-object v8, v12

    move-object v12, v13

    move-wide/from16 v13, p4

    .line 193
    :try_start_be
    invoke-virtual/range {v10 .. v15}, Lcom/ss/ugc/effectplatform/util/FileUtils;->copyStreamAndGetMd5(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object v10

    .line 196
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 197
    invoke-virtual {v8}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->commit()V

    .line 198
    new-instance v2, Lkotlin/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ea} :catch_f9
    .catchall {:try_start_be .. :try_end_ea} :catchall_f4

    .line 221
    invoke-virtual {v3, v9}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    .line 222
    invoke-virtual {v3, v7}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    .line 223
    invoke-virtual {v12}, Lbytekn/foundation/io/file/TotalLengthOutputStream;->close()V

    return-object v2

    :catchall_f4
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_1cb

    :catch_f9
    move-exception v0

    :goto_fa
    move-object/from16 v16, v8

    goto/16 :goto_1aa

    .line 200
    :cond_fe
    :try_start_fe
    sget-object v13, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v14, "DiskLruCacheImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 201
    new-instance v0, Lcom/ss/ugc/effectplatform/exception/MD5Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ss/ugc/effectplatform/exception/MD5Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_147} :catch_f9
    .catchall {:try_start_fe .. :try_end_147} :catchall_f4

    :catch_147
    move-exception v0

    move-object v8, v12

    :goto_149
    move-object/from16 v12, v16

    goto :goto_fa

    :cond_14c
    move-object v8, v12

    .line 204
    :try_start_14d
    sget-object v10, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v11, "DiskLruCacheImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 205
    new-instance v0, Lcom/ss/ugc/effectplatform/exception/CurrentEditingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ss/ugc/effectplatform/exception/CurrentEditingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_17d} :catch_17d
    .catchall {:try_start_14d .. :try_end_17d} :catchall_a2

    :catch_17d
    move-exception v0

    goto :goto_149

    .line 209
    :cond_17f
    :try_start_17f
    sget-object v10, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v11, "DiskLruCacheImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no file in unzipped dir! key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_19a} :catch_a5
    .catchall {:try_start_17f .. :try_end_19a} :catchall_a2

    .line 221
    :cond_19a
    :try_start_19a
    invoke-virtual {v3, v9}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    .line 222
    invoke-virtual {v3, v7}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a0} :catch_1a0

    .line 228
    :catch_1a0
    new-instance v0, Lkotlin/Pair;

    const-string v1, ""

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 212
    :goto_1aa
    :try_start_1aa
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "DiskLruCacheImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ioException"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c5
    .catchall {:try_start_1aa .. :try_end_1c5} :catchall_f4

    if-eqz v16, :cond_1ca

    .line 214
    :try_start_1c7
    invoke-virtual/range {v16 .. v16}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1ca} :catch_1ca
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_f4

    .line 218
    :catch_1ca
    :cond_1ca
    :try_start_1ca
    throw v0
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_f4

    .line 221
    :goto_1cb
    :try_start_1cb
    sget-object v1, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v1, v9}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    .line 222
    invoke-virtual {v1, v7}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    if-eqz v16, :cond_1d8

    .line 223
    invoke-virtual/range {v16 .. v16}, Lbytekn/foundation/io/file/TotalLengthOutputStream;->close()V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1d8} :catch_1d8

    .line 226
    :catch_1d8
    :cond_1d8
    throw v0
.end method

.method public final writeInputStreamToDisk(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;)Lkotlin/Pair;
    .registers 27

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    const-string v2, "editor in currently editing!, key: "

    const-string v3, ", actual md5: "

    const-string v4, " md5 not match! expected md: "

    const-string/jumbo v5, "write: "

    const-string v6, "key"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "inputStream"

    move-object/from16 v8, p2

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 142
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->getDiskLruCache()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    move-result-object v7

    if-eqz v7, :cond_2d

    invoke-virtual {v7, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_29
    .catchall {:try_start_1a .. :try_end_24} :catchall_26

    move-object v13, v7

    goto :goto_2e

    :catchall_26
    move-exception v0

    goto/16 :goto_117

    :catch_29
    move-exception v0

    move-object v9, v6

    goto/16 :goto_f6

    :cond_2d
    move-object v13, v6

    :goto_2e
    if-eqz v13, :cond_c8

    .line 144
    :try_start_30
    new-instance v9, Lbytekn/foundation/io/file/TotalLengthOutputStream;

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v13, v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v2

    .line 144
    invoke-direct {v9, v2}, Lbytekn/foundation/io/file/TotalLengthOutputStream;-><init>(Lbytekn/foundation/io/file/FileOutputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_c5
    .catchall {:try_start_30 .. :try_end_3a} :catchall_26

    .line 147
    :try_start_3a
    sget-object v7, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lcom/ss/ugc/effectplatform/util/FileUtils;->copyStreamAndGetMd5(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 151
    invoke-virtual {v13}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->commit()V

    .line 152
    new-instance v0, Lkotlin/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->cacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_70} :catch_78
    .catchall {:try_start_3a .. :try_end_70} :catchall_74

    .line 170
    invoke-virtual {v3, v9}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    return-object v0

    :catchall_74
    move-exception v0

    move-object v6, v9

    goto/16 :goto_117

    :catch_78
    move-exception v0

    :goto_79
    move-object v6, v13

    goto/16 :goto_f6

    .line 154
    :cond_7c
    :try_start_7c
    sget-object v14, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v15, "DiskLruCacheImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 155
    new-instance v6, Lcom/ss/ugc/effectplatform/exception/MD5Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/ss/ugc/effectplatform/exception/MD5Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c5} :catch_78
    .catchall {:try_start_7c .. :try_end_c5} :catchall_74

    :catch_c5
    move-exception v0

    move-object v9, v6

    goto :goto_79

    .line 158
    :cond_c8
    :try_start_c8
    sget-object v7, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v8, "DiskLruCacheImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 159
    new-instance v0, Lcom/ss/ugc/effectplatform/exception/CurrentEditingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ss/ugc/effectplatform/exception/CurrentEditingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_f6} :catch_c5
    .catchall {:try_start_c8 .. :try_end_f6} :catchall_26

    .line 162
    :goto_f6
    :try_start_f6
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "DiskLruCacheImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ioException"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_111
    .catchall {:try_start_f6 .. :try_end_111} :catchall_74

    if-eqz v6, :cond_116

    .line 164
    :try_start_113
    invoke-virtual {v6}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_74

    .line 168
    :catch_116
    :cond_116
    :try_start_116
    throw v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_74

    :goto_117
    if-eqz v6, :cond_11e

    .line 170
    sget-object v1, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v1, v6}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    :cond_11e
    throw v0
.end method
