.class Lcom/obs/services/AbstractBucketClient$5;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->headBucket(Lcom/obs/services/model/BaseBucketRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/BaseBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$5;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$5;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Ljava/lang/Boolean;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$5;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$5;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->headBucketImpl(Lcom/obs/services/model/BaseBucketRequest;)Z
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$2300(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 259
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$5;->action()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 3

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$5;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketClient;->access$2400(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_2b

    .line 272
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$5;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, p1}, Lcom/obs/services/AbstractBucketClient;->access$2500(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 273
    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$5;->this$0:Lcom/obs/services/AbstractBucketClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketClient;->access$2600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V
    :try_end_21
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 276
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_2c

    :cond_2b
    return-void

    .line 277
    :cond_2c
    throw p0
.end method
