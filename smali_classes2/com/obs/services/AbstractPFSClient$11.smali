.class Lcom/obs/services/AbstractPFSClient$11;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->getAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$11;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$11;->val$request:Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$11;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$11;->val$request:Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;

    # invokes: Lcom/obs/services/internal/service/ObsFileService;->getAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$1000(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 285
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$11;->action()Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method
