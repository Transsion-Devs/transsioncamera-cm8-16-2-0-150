.class Lcom/obs/services/AbstractObjectClient$18;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->getObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObjectTagResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ObjectTaggingRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)V
    .registers 3

    .line 770
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$18;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$18;->val$request:Lcom/obs/services/model/ObjectTaggingRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObjectTagResult;
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$18;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$18;->val$request:Lcom/obs/services/model/ObjectTaggingRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->getObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 770
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$18;->action()Lcom/obs/services/model/ObjectTagResult;

    move-result-object p0

    return-object p0
.end method
