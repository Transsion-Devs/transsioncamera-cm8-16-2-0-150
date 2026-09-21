.class public final Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/download/IWriteDisk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;-><init>(Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;->this$0:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execWrite(Lbytekn/foundation/io/file/FileInputStream;JLcom/ss/ugc/effectplatform/download/DownloadListener;)Ljava/lang/String;
    .registers 5

    const-string p2, "inputStream"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;->this$0:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;

    # getter for: Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->algorithmModelCache:Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;
    invoke-static {p2}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->access$getAlgorithmModelCache$p(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;->this$0:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;

    # invokes: Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->getFetchModelType()Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;
    invoke-static {p3}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->access$getFetchModelType(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;

    move-result-object p3

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$downloadManager$1;->this$0:Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;

    # invokes: Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->access$getModelInfo(Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1}, Lcom/ss/ugc/effectplatform/cache/AlgorithmModelCache;->writeModel(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lbytekn/foundation/io/file/FileInputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
