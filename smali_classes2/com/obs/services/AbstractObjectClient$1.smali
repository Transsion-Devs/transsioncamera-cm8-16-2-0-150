.class Lcom/obs/services/AbstractObjectClient$1;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->doesObjectExist(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
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
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/GetObjectMetadataRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$1;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Ljava/lang/Boolean;
    .registers 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object v1, p0, Lcom/obs/services/AbstractObjectClient$1;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->doesObjectExistImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    invoke-static {v0, v1}, Lcom/obs/services/AbstractObjectClient;->access$000(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_c
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z
    invoke-static {v1}, Lcom/obs/services/AbstractObjectClient;->access$100(Lcom/obs/services/AbstractObjectClient;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5c

    const-string v1, "Unsupported Authorization Type"

    .line 78
    invoke-virtual {v0}, Lcom/obs/services/internal/ServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    .line 79
    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v1}, Lcom/obs/services/AbstractObjectClient;->access$200(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/AbstractObjectClient$1;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    .line 80
    invoke-virtual {v2}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-ne v1, v2, :cond_5c

    .line 81
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractObjectClient;->access$300(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/AbstractObjectClient$1;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    .line 82
    invoke-virtual {v1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    .line 83
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$1;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$1;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->doesObjectExistImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 85
    :cond_5c
    throw v0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 71
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$1;->action()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
