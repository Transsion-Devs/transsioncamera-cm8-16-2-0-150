.class public final Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$Companion;


# instance fields
.field private final algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

.field private downloadManager:Lcom/ss/ugc/effectplatform/download/DownloadManager;

.field private fetchModelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

.field private modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

.field private final netWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->Companion:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V
    .registers 4

    const-string v0, "algorithmModelCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netWorker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->netWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    .line 24
    new-instance p1, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;

    invoke-direct {p1}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;-><init>()V

    .line 25
    invoke-virtual {p1, p2}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->setNetworkClient(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;

    invoke-direct {p2, p0}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;-><init>(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)V

    invoke-virtual {p1, p2}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->setWriteDisk(Lcom/ss/ugc/effectplatform/download/IWriteDisk;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;

    move-result-object p1

    .line 31
    sget-object p2, Lcom/ss/ugc/effectplatform/download/DownloadType;->ALGORITHM:Lcom/ss/ugc/effectplatform/download/DownloadType;

    invoke-virtual {p1, p2}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->setDownloadType(Lcom/ss/ugc/effectplatform/download/DownloadType;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->build()Lcom/ss/ugc/effectplatform/download/DownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->downloadManager:Lcom/ss/ugc/effectplatform/download/DownloadManager;

    return-void
.end method

.method public static final synthetic access$getAlgorithmModelCache$p(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    return-object p0
.end method

.method public static final synthetic access$getFetchModelType(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->getFetchModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getModelInfo(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getFetchModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->fetchModelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    if-eqz p0, :cond_c

    if-nez p0, :cond_b

    .line 78
    const-string v0, "fetchModelType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    return-object p0

    .line 76
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fetchModelType is required!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    if-eqz p0, :cond_c

    if-nez p0, :cond_b

    .line 85
    const-string v0, "modelInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    return-object p0

    .line 83
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "modelInfo is required!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final download(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)J
    .registers 7

    const-string v0, "modelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchModelType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    .line 37
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v0

    .line 38
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->fetchModelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    if-eqz v0, :cond_26

    .line 39
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUrl_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 40
    sget-object v1, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ZIP:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    iput-object v1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->fetchModelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    :cond_26
    if-eqz v0, :cond_3a

    .line 42
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getZip_url_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 43
    sget-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;->ORIGIN:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->fetchModelType:Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    .line 45
    :cond_3a
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUrl(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)Ljava/util/List;

    move-result-object v0

    goto :goto_47

    :cond_46
    move-object v0, v1

    .line 46
    :goto_47
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_85

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 49
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->downloadManager:Lcom/ss/ugc/effectplatform/download/DownloadManager;

    new-instance v2, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$download$downloadFileSize$1;

    invoke-direct {v2, p1}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$download$downloadFileSize$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v0, v2}, Lcom/ss/ugc/effectplatform/download/DownloadManager;->download(Ljava/lang/String;Lcom/ss/ugc/effectplatform/download/DownloadListener;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5d

    return-wide v0

    .line 70
    :cond_7b
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    if-nez p0, :cond_84

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_84
    throw p0

    .line 47
    :cond_85
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " download url is empty! type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
