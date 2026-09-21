.class Lcom/obs/services/AbstractMultipartObjectClient$1;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractMultipartObjectClient;->initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/InitiateMultipartUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractMultipartObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/InitiateMultipartUploadRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/InitiateMultipartUploadRequest;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/obs/services/AbstractMultipartObjectClient$1;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractMultipartObjectClient$1;->val$request:Lcom/obs/services/model/InitiateMultipartUploadRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$1;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractMultipartObjectClient$1;->val$request:Lcom/obs/services/model/InitiateMultipartUploadRequest;

    # invokes: Lcom/obs/services/internal/service/ObsMultipartObjectService;->initiateMultipartUploadImpl(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractMultipartObjectClient;->access$000(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/obs/services/AbstractMultipartObjectClient$1;->action()Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method
