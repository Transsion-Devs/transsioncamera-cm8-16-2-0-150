.class Lcom/obs/services/AbstractBucketClient$4;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->listAliasBuckets()Lcom/obs/services/model/ListBucketAliasResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ListBucketAliasResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$4;->this$0:Lcom/obs/services/AbstractBucketClient;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ListBucketAliasResult;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$4;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->listAliasBucketsImpl()Lcom/obs/services/model/ListBucketAliasResult;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketClient;->access$1900(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/model/ListBucketAliasResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 222
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$4;->action()Lcom/obs/services/model/ListBucketAliasResult;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$4;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$2000(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_23

    .line 233
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$4;->this$0:Lcom/obs/services/AbstractBucketClient;

    const-string v1, ""

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractBucketClient;->access$2100(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 234
    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$4;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketClient;->access$2200(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_23
    return-void
.end method
