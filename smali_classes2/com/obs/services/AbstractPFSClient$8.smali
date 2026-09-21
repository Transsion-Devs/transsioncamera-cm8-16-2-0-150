.class Lcom/obs/services/AbstractPFSClient$8;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->listContentSummaryFs(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/ListContentSummaryFsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/ListContentSummaryFsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)V
    .registers 3

    .line 250
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$8;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$8;->val$request:Lcom/obs/services/model/fs/ListContentSummaryFsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/ListContentSummaryFsResult;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$8;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$8;->val$request:Lcom/obs/services/model/fs/ListContentSummaryFsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsFileService;->listContentSummaryFsImpl(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$700(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 250
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$8;->action()Lcom/obs/services/model/fs/ListContentSummaryFsResult;

    move-result-object p0

    return-object p0
.end method
