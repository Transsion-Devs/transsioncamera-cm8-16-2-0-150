.class Lcom/obs/services/AbstractPFSClient$4;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->modifyObject(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ModifyObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/ModifyObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/ModifyObjectRequest;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$4;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$4;->val$request:Lcom/obs/services/model/ModifyObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ModifyObjectResult;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$4;->this$0:Lcom/obs/services/AbstractPFSClient;

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$4;->val$request:Lcom/obs/services/model/ModifyObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->modifyObjectImpl(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractPFSClient;->access$300(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$4;->action()Lcom/obs/services/model/ModifyObjectResult;

    move-result-object p0

    return-object p0
.end method
