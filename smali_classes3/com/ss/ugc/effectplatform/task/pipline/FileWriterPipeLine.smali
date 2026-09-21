.class public final Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$Companion;


# instance fields
.field private final cacheDir:Ljava/lang/String;

.field private expectMD5:Ljava/lang/String;

.field private lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

.field private final onProgressCallback:Lkotlin/jvm/functions/Function2;

.field private final outFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->Companion:Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;)V
    .registers 7

    const-string v0, "cacheDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->cacheDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgressCallback:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->expectMD5:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;)V

    return-void
.end method

.method public static final synthetic access$getOnProgressCallback$p(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgressCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$onProgress(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;IJ)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgress(IJ)V

    return-void
.end method

.method private final onProgress(IJ)V
    .registers 6

    .line 72
    sget-object v0, Lbytekn/foundation/utils/Transmitter;->INSTANCE:Lbytekn/foundation/utils/Transmitter;

    new-instance v1, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$onProgress$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;IJ)V

    invoke-virtual {v0, v1}, Lbytekn/foundation/utils/Transmitter;->transmitToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p1, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;)Ljava/lang/String;
    .registers 13

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    if-eqz v0, :cond_3e

    .line 31
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    sget-object v1, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    if-nez v2, :cond_23

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_23
    new-instance v4, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)V

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->expectMD5:Ljava/lang/String;

    new-instance v8, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$1;

    invoke-direct {v8, p0}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;->writeInputStreamToDisk$default(Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;Ljava/lang/String;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    return-object p0

    .line 35
    :cond_3e
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 36
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->cacheDir:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    .line 38
    :cond_4e
    sget-object v3, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    const-string v2, "_tmp"

    invoke-virtual {v3, v1, v2}, Lcom/ss/ugc/effectplatform/util/FileUtils;->addPathSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v4, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/ss/ugc/effectplatform/download/ByteReadFileInputStream;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    .line 42
    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 43
    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    :cond_6d
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 45
    invoke-static {v0, v1, v5, v6, v2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Ljava/lang/String;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v2

    :cond_73
    move-object v5, v2

    .line 47
    const-string v2, "FileWriter error"

    if-eqz v5, :cond_ee

    .line 48
    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->expectMD5:Ljava/lang/String;

    if-eqz v6, :cond_be

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_83

    goto :goto_be

    .line 59
    :cond_83
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getContentLength()J

    move-result-wide v6

    new-instance v8, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$hex$1;

    invoke-direct {v8, p0}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$hex$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)V

    invoke-virtual/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/util/FileUtils;->copyStreamAndGetMd5(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v0, v4}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    .line 61
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->expectMD5:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 62
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    return-object p0

    .line 64
    :cond_aa
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FileWriterPipeLine"

    const-string v2, "md5 check failed"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 65
    new-instance p0, Lcom/ss/ugc/effectplatform/exception/MD5Exception;

    const-string p1, "MD5 not match"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/exception/MD5Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_be
    :goto_be
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getContentLength()J

    move-result-wide v6

    new-instance v8, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$1;

    invoke-direct {v8, p0}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)V

    invoke-virtual/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/util/FileUtils;->copyStream(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)J

    .line 51
    invoke-virtual {v0, v4}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    .line 52
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 53
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->outFilePath:Ljava/lang/String;

    return-object p0

    .line 55
    :cond_dc
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "FileWriterPipeLine"

    const-string v5, "file rename failed"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 56
    new-instance p0, Lbytekn/foundation/io/file/IOException;

    invoke-direct {p0, v2}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_ee
    new-instance p0, Lbytekn/foundation/io/file/IOException;

    invoke-direct {p0, v2}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
