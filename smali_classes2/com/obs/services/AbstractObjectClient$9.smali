.class Lcom/obs/services/AbstractObjectClient$9;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/DeleteObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/DeleteObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectRequest;)V
    .registers 3

    .line 470
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$9;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$9;->val$request:Lcom/obs/services/model/DeleteObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/DeleteObjectResult;
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$9;->val$request:Lcom/obs/services/model/DeleteObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$9;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$9;->val$request:Lcom/obs/services/model/DeleteObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectImpl(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1500(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 470
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$9;->action()Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method
