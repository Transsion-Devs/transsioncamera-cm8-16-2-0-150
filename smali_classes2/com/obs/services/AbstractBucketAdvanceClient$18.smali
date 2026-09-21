.class Lcom/obs/services/AbstractBucketAdvanceClient$18;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketAdvanceClient;->getCrrProgress(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/crr/GetCrrProgressResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

.field final synthetic val$request:Lcom/obs/services/model/crr/GetCrrProgressRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/crr/GetCrrProgressRequest;)V
    .registers 3

    .line 586
    iput-object p1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->val$request:Lcom/obs/services/model/crr/GetCrrProgressRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/crr/GetCrrProgressResult;
    .registers 2

    .line 589
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->val$request:Lcom/obs/services/model/crr/GetCrrProgressRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getCrrProgressImpl(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$1700(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 586
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketAdvanceClient$18;->action()Lcom/obs/services/model/crr/GetCrrProgressResult;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$1800(Lcom/obs/services/AbstractBucketAdvanceClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_27

    .line 594
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object v1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->val$request:Lcom/obs/services/model/crr/GetCrrProgressRequest;

    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$1900(Lcom/obs/services/AbstractBucketAdvanceClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 595
    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$18;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$2000(Lcom/obs/services/AbstractBucketAdvanceClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_27
    return-void
.end method
