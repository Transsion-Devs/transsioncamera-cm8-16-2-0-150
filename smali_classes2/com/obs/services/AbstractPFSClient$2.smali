.class Lcom/obs/services/AbstractPFSClient$2;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->renameObject(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/RenameObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/RenameObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/RenameObjectRequest;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$2;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$2;->val$request:Lcom/obs/services/model/RenameObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/RenameObjectResult;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$2;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$2;->val$request:Lcom/obs/services/model/RenameObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->renameObjectImpl(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$100(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$2;->action()Lcom/obs/services/model/RenameObjectResult;

    move-result-object p0

    return-object p0
.end method
