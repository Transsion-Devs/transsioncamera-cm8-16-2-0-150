.class Lcom/obs/services/AbstractPFSClient$5;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->renameFile(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/RenameResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/RenameRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/RenameRequest;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$5;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$5;->val$request:Lcom/obs/services/model/fs/RenameRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/RenameResult;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$5;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$5;->val$request:Lcom/obs/services/model/fs/RenameRequest;

    # invokes: Lcom/obs/services/internal/service/ObsFileService;->renameFileImpl(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$400(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 191
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$5;->action()Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method
