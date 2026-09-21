.class public final Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# instance fields
.field private lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

.field private final unzipDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;)V
    .registers 4

    const-string/jumbo v0, "unzipDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->unzipDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->doJob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doJob(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->unzipDir:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ss/ugc/effectplatform/util/FileUtils;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 20
    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 21
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    if-eqz p1, :cond_29

    .line 22
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->unzipDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 24
    sget-object v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->addEntryToCache(Ljava/lang/String;)Z

    .line 27
    :cond_29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;->unzipDir:Ljava/lang/String;

    return-object p0

    .line 29
    :cond_2c
    new-instance p0, Lcom/ss/ugc/effectplatform/exception/UnzipException;

    const-string/jumbo p1, "unzip file failed!"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/exception/UnzipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
