.class Lcom/obs/services/AbstractBucketClient$27;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->setBucketCustomDomain(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
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

.field final synthetic val$request:Lcom/obs/services/model/SetBucketCustomDomainRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCustomDomainRequest;)V
    .registers 3

    .line 919
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$27;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$27;->val$request:Lcom/obs/services/model/SetBucketCustomDomainRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 922
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$27;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$27;->val$request:Lcom/obs/services/model/SetBucketCustomDomainRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketCustomDomainImpl(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$4800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 919
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$27;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
