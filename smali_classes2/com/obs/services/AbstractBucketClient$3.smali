.class Lcom/obs/services/AbstractBucketClient$3;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->listBucketsV2(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ListBucketsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/ListBucketsRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/ListBucketsRequest;)V
    .registers 3

    .line 199
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$3;->val$request:Lcom/obs/services/model/ListBucketsRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ListBucketsResult;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestConnectionService;->isCname()Z
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$1400(Lcom/obs/services/AbstractBucketClient;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 205
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$3;->val$request:Lcom/obs/services/model/ListBucketsRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->listAllBucketsImpl(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$1500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;

    move-result-object p0

    return-object p0

    .line 203
    :cond_11
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "listBuckets is not allowed in customdomain mode"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 199
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$3;->action()Lcom/obs/services/model/ListBucketsResult;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$1600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_23

    .line 213
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    const-string v1, ""

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractBucketClient;->access$1700(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 214
    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$3;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketClient;->access$1800(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_23
    return-void
.end method
