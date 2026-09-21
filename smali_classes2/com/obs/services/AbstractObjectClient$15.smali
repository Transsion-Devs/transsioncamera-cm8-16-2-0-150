.class Lcom/obs/services/AbstractObjectClient$15;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->setObjectMetadata(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObjectMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/SetObjectMetadataRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectMetadataRequest;)V
    .registers 3

    .line 681
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$15;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$15;->val$request:Lcom/obs/services/model/SetObjectMetadataRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObjectMetadata;
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$15;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$15;->val$request:Lcom/obs/services/model/SetObjectMetadataRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->setObjectMetadataImpl(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2100(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 681
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$15;->action()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method
