.class Lcom/obs/services/AbstractObjectClient$4;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ListVersionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/ListVersionsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListVersionsRequest;)V
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$4;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$4;->val$request:Lcom/obs/services/model/ListVersionsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ListVersionsResult;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$4;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$4;->val$request:Lcom/obs/services/model/ListVersionsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->listVersionsImpl(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 197
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$4;->action()Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method
