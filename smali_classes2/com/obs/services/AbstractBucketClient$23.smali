.class Lcom/obs/services/AbstractBucketClient$23;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->setBucketRequestPayment(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/HeaderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/SetBucketRequestPaymentRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketRequestPaymentRequest;)V
    .registers 3

    .line 826
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$23;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$23;->val$request:Lcom/obs/services/model/SetBucketRequestPaymentRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$23;->val$request:Lcom/obs/services/model/SetBucketRequestPaymentRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$23;->val$request:Lcom/obs/services/model/SetBucketRequestPaymentRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetBucketRequestPaymentRequest;->getPayer()Lcom/obs/services/model/RequestPaymentEnum;

    move-result-object v0

    const-string v1, "payer is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$23;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$23;->val$request:Lcom/obs/services/model/SetBucketRequestPaymentRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketRequestPaymentImpl(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$4400(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$23;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
