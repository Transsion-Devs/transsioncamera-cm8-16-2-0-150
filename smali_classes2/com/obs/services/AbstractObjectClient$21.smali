.class Lcom/obs/services/AbstractObjectClient$21;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->restoreObjectV2(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/RestoreObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/RestoreObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)V
    .registers 3

    .line 831
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$21;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$21;->val$request:Lcom/obs/services/model/RestoreObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/RestoreObjectResult;
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$21;->val$request:Lcom/obs/services/model/RestoreObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$21;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$21;->val$request:Lcom/obs/services/model/RestoreObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->restoreObjectV2Impl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 831
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$21;->action()Lcom/obs/services/model/RestoreObjectResult;

    move-result-object p0

    return-object p0
.end method
