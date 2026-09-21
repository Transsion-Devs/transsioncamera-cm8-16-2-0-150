.class Lcom/obs/services/AbstractObjectClient$6;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->putObjectInTwoBucket(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/PutObjectInTwoBucketResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)V
    .registers 3

    .line 347
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$6;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    .line 351
    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_21

    .line 352
    :cond_19
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Both input and file are set, only one is allowed in main bucket request."

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    .line 355
    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_42

    .line 356
    :cond_3a
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Both input and file are set, only one is allowed in backup bucket request."

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$6;->val$request:Lcom/obs/services/model/PutObjectInTwoBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->putObjectInTwoBucketImpl(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$900(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 347
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$6;->action()Lcom/obs/services/model/PutObjectInTwoBucketResult;

    move-result-object p0

    return-object p0
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->this$0:Lcom/obs/services/AbstractObjectClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractObjectClient;->access$1000(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_23

    .line 366
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$6;->this$0:Lcom/obs/services/AbstractObjectClient;

    const-string v1, ""

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, v1}, Lcom/obs/services/AbstractObjectClient;->access$1100(Lcom/obs/services/AbstractObjectClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 367
    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$6;->this$0:Lcom/obs/services/AbstractObjectClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractObjectClient;->access$1200(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_23
    return-void
.end method
