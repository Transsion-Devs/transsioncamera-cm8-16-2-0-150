.class final Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;
.super Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalTask"
.end annotation


# instance fields
.field private cacheDir:Ljava/lang/String;

.field private final effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private filePath:Ljava/lang/String;

.field private lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

.field private md5:Ljava/lang/String;

.field private needUnzip:Z

.field private urlList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 10

    const-string v0, "effectNetWorker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p4, p8}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->urlList:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->cacheDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->filePath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->needUnzip:Z

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->md5:Ljava/lang/String;

    return-void
.end method

.method private final onFail(Ljava/lang/Exception;)V
    .registers 3

    .line 100
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onFail$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onSuccess()V
    .registers 2

    .line 94
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$onSuccess$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method protected executeDownload(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V
    .registers 13

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->needUnzip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 67
    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V

    .line 68
    new-instance v2, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->cacheDir:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$pipeLine$1;

    invoke-direct {v5, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$pipeLine$1;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->md5:Ljava/lang/String;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 68
    invoke-direct/range {v2 .. v9}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    new-instance p1, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$1;

    invoke-direct {p1, v0, v2}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$1;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 70
    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/task/pipline/FileUnzipPipeLine;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;)V

    .line 15
    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$2;

    invoke-direct {v1, p1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$2;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    goto :goto_68

    .line 73
    :cond_4a
    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V

    .line 74
    new-instance v2, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->cacheDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->filePath:Ljava/lang/String;

    new-instance v5, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$pipeLine$2;

    invoke-direct {v5, p1}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$pipeLine$2;-><init>(Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->md5:Ljava/lang/String;

    iget-object v7, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    invoke-direct/range {v2 .. v7}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;)V

    .line 15
    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$3;

    invoke-direct {v1, v0, v2}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask$executeDownload$$inlined$continueWith$3;-><init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V

    .line 77
    :goto_68
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->urlList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    sget-object v4, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    :try_start_8a
    invoke-interface {v1, v2}, Lbytekn/foundation/task/IPipeLine;->doJob(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_91

    .line 88
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->onSuccess()V

    goto :goto_a0

    :catch_91
    move-exception v0

    goto :goto_6f

    :cond_93
    if-eqz v0, :cond_96

    goto :goto_9d

    .line 90
    :cond_96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string p1, "file download failed"

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_9d
    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->onFail(Ljava/lang/Exception;)V

    :goto_a0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;->md5:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method
