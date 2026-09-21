.class Lcom/obs/services/AbstractMultipartObjectClient$6;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractMultipartObjectClient;->listParts(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ListPartsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractMultipartObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ListPartsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListPartsRequest;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/obs/services/AbstractMultipartObjectClient$6;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractMultipartObjectClient$6;->val$request:Lcom/obs/services/model/ListPartsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ListPartsResult;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$6;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractMultipartObjectClient$6;->val$request:Lcom/obs/services/model/ListPartsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsMultipartObjectService;->listPartsImpl(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractMultipartObjectClient;->access$500(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lcom/obs/services/AbstractMultipartObjectClient$6;->action()Lcom/obs/services/model/ListPartsResult;

    move-result-object p0

    return-object p0
.end method
