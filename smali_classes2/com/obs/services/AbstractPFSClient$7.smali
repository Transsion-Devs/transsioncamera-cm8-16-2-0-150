.class Lcom/obs/services/AbstractPFSClient$7;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractPFSClient;->dropFile(Lcom/obs/services/model/fs/DropFileRequest;)Lcom/obs/services/model/fs/DropFileResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/DropFileResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractPFSClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/DropFileRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/fs/DropFileRequest;)V
    .registers 3

    .line 235
    iput-object p1, p0, Lcom/obs/services/AbstractPFSClient$7;->this$0:Lcom/obs/services/AbstractPFSClient;

    iput-object p2, p0, Lcom/obs/services/AbstractPFSClient$7;->val$request:Lcom/obs/services/model/fs/DropFileRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/DropFileResult;
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$7;->val$request:Lcom/obs/services/model/fs/DropFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/obs/services/AbstractPFSClient$7;->this$0:Lcom/obs/services/AbstractPFSClient;

    new-instance v1, Lcom/obs/services/model/DeleteObjectRequest;

    iget-object v2, p0, Lcom/obs/services/AbstractPFSClient$7;->val$request:Lcom/obs/services/model/fs/DropFileRequest;

    .line 241
    invoke-virtual {v2}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/obs/services/AbstractPFSClient$7;->val$request:Lcom/obs/services/model/fs/DropFileRequest;

    invoke-virtual {v3}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/obs/services/AbstractPFSClient$7;->val$request:Lcom/obs/services/model/fs/DropFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/fs/DropFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/obs/services/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectImpl(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractPFSClient;->access$600(Lcom/obs/services/AbstractPFSClient;Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/DropFileResult;

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 235
    invoke-virtual {p0}, Lcom/obs/services/AbstractPFSClient$7;->action()Lcom/obs/services/model/fs/DropFileResult;

    move-result-object p0

    return-object p0
.end method
