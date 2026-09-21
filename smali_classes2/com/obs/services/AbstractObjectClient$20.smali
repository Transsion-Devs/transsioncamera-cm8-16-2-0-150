.class Lcom/obs/services/AbstractObjectClient$20;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->deleteObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/HeaderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ObjectTaggingRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)V
    .registers 3

    .line 812
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$20;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$20;->val$request:Lcom/obs/services/model/ObjectTaggingRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$20;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$20;->val$request:Lcom/obs/services/model/ObjectTaggingRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->deleteObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 812
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$20;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
