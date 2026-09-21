.class Lcom/obs/services/AbstractObjectClient$10;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/DeleteObjectsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$deleteObjectsRequest:Lcom/obs/services/model/DeleteObjectsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectsRequest;)V
    .registers 3

    .line 490
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$10;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$10;->val$deleteObjectsRequest:Lcom/obs/services/model/DeleteObjectsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/DeleteObjectsResult;
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$10;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$10;->val$deleteObjectsRequest:Lcom/obs/services/model/DeleteObjectsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectsImpl(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 490
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$10;->action()Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p0

    return-object p0
.end method
