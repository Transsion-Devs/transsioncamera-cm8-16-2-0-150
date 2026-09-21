.class Lcom/obs/services/AbstractObjectClient$8;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->selectObjectContent(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/select/SelectObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$selectRequest:Lcom/obs/services/model/select/SelectObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/select/SelectObjectRequest;)V
    .registers 3

    .line 427
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$8;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$8;->val$selectRequest:Lcom/obs/services/model/select/SelectObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/select/SelectObjectResult;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$8;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$8;->val$selectRequest:Lcom/obs/services/model/select/SelectObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->selectObjectContentImpl(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 427
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$8;->action()Lcom/obs/services/model/select/SelectObjectResult;

    move-result-object p0

    return-object p0
.end method
