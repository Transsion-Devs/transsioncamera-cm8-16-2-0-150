.class Lcom/obs/services/AbstractMultipartObjectClient$7;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractMultipartObjectClient;->listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/MultipartUploadListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractMultipartObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ListMultipartUploadsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListMultipartUploadsRequest;)V
    .registers 3

    .line 224
    iput-object p1, p0, Lcom/obs/services/AbstractMultipartObjectClient$7;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractMultipartObjectClient$7;->val$request:Lcom/obs/services/model/ListMultipartUploadsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/MultipartUploadListing;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$7;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractMultipartObjectClient$7;->val$request:Lcom/obs/services/model/ListMultipartUploadsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsMultipartObjectService;->listMultipartUploadsImpl(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractMultipartObjectClient;->access$600(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 224
    invoke-virtual {p0}, Lcom/obs/services/AbstractMultipartObjectClient$7;->action()Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p0

    return-object p0
.end method
