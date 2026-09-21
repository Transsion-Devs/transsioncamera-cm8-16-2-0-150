.class Lcom/obs/services/AbstractBucketClient$1;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObsBucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/CreateBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$1;->val$request:Lcom/obs/services/model/CreateBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObsBucket;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestConnectionService;->isCname()Z
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$000(Lcom/obs/services/AbstractBucketClient;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 123
    :try_start_8
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object v1, p0, Lcom/obs/services/AbstractBucketClient$1;->val$request:Lcom/obs/services/model/CreateBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractBucketClient;->access$100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0
    :try_end_10
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z
    invoke-static {v1}, Lcom/obs/services/AbstractBucketClient;->access$200(Lcom/obs/services/AbstractBucketClient;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5c

    const-string v1, "Unsupported Authorization Type"

    .line 126
    invoke-virtual {v0}, Lcom/obs/services/internal/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    .line 127
    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v1}, Lcom/obs/services/AbstractBucketClient;->access$300(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/AbstractBucketClient$1;->val$request:Lcom/obs/services/model/CreateBucketRequest;

    .line 128
    invoke-virtual {v2}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v1, v2, :cond_5c

    .line 129
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$400(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/AbstractBucketClient$1;->val$request:Lcom/obs/services/model/CreateBucketRequest;

    .line 130
    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    .line 131
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$1;->val$request:Lcom/obs/services/model/CreateBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0

    .line 133
    :cond_5c
    throw v0

    .line 120
    :cond_5d
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "createBucket is not allowed in customdomain mode"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 116
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$1;->action()Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_23

    .line 143
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    const-string v1, ""

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractBucketClient;->access$700(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 144
    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$1;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketClient;->access$800(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_23
    return-void
.end method
