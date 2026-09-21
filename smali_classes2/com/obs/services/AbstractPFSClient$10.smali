.class Lcom/obs/services/AbstractPFSClient$10;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->setAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)V
    .registers 3

    .line 274
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$10;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$10;->val$request:Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$10;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$10;->val$request:Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;

    # invokes: Lcom/obs/services/internal/service/ObsFileService;->setAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$900(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 274
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$10;->action()Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;

    move-result-object p0

    return-object p0
.end method
