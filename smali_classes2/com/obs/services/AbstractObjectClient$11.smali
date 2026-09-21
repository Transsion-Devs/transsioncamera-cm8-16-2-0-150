.class Lcom/obs/services/AbstractObjectClient$11;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/CopyObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/CopyObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/CopyObjectRequest;)V
    .registers 3

    .line 512
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$11;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$11;->val$request:Lcom/obs/services/model/CopyObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/CopyObjectResult;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$11;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$11;->val$request:Lcom/obs/services/model/CopyObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->copyObjectImpl(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 512
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$11;->action()Lcom/obs/services/model/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method
