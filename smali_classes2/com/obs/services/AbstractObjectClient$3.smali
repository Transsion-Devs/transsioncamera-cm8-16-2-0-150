.class Lcom/obs/services/AbstractObjectClient$3;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObjectListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ListObjectsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListObjectsRequest;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$3;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$3;->val$request:Lcom/obs/services/model/ListObjectsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObjectListing;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$3;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$3;->val$request:Lcom/obs/services/model/ListObjectsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->listObjectsImpl(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 128
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$3;->action()Lcom/obs/services/model/ObjectListing;

    move-result-object p0

    return-object p0
.end method
