.class public Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;
    }
.end annotation


# instance fields
.field private cacheDir:Ljava/lang/String;

.field private final effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private filePath:Ljava/lang/String;

.field private lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

.field private md5:Ljava/lang/String;

.field private needUnzip:Z

.field private onFail:Lkotlin/jvm/functions/Function1;

.field private onProgress:Lkotlin/jvm/functions/Function2;

.field private onSuccess:Lkotlin/jvm/functions/Function0;

.field private urlList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .registers 12

    const-string v0, "effectNetWorker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->urlList:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->cacheDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->filePath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->needUnzip:Z

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->md5:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onSuccess:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onProgress:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onFail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 26

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v7, v1

    goto :goto_b

    :cond_9
    move/from16 v7, p5

    :goto_b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move-object v8, v2

    goto :goto_14

    :cond_12
    move-object/from16 v8, p6

    :goto_14
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1a

    move-object v9, v2

    goto :goto_1c

    :cond_1a
    move-object/from16 v9, p7

    :goto_1c
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_22

    move-object v10, v2

    goto :goto_24

    :cond_22
    move-object/from16 v10, p8

    :goto_24
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2a

    move-object v11, v2

    goto :goto_2c

    :cond_2a
    move-object/from16 v11, p9

    :goto_2c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_39

    move-object v12, v2

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v2, p0

    goto :goto_42

    :cond_39
    move-object/from16 v12, p10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 22
    :goto_42
    invoke-direct/range {v2 .. v12}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->md5:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final getOnFail()Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onFail:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnProgress()Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onProgress:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnSuccess()Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->onSuccess:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public run()V
    .registers 11

    .line 27
    sget-object v0, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;

    new-instance v1, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->urlList:Ljava/util/List;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->cacheDir:Ljava/lang/String;

    .line 28
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->filePath:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->needUnzip:Z

    iget-object v7, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->lruCache:Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;

    iget-object v8, p0, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;->md5:Ljava/lang/String;

    new-instance v9, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;

    invoke-direct {v9, p0}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$run$1;-><init>(Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask;)V

    .line 27
    invoke-direct/range {v1 .. v9}, Lcom/ss/ugc/effectplatform/task/dag/DownloadFileTask$InternalTask;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;Ljava/lang/String;Lcom/ss/ugc/effectplatform/task/pipline/DownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/FileDownloadManager;->syncExec(Lcom/ss/ugc/effectplatform/task/pipline/DownloadTask;)V

    return-void
.end method
