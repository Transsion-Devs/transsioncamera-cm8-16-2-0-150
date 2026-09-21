.class Lcom/obs/services/AbstractBucketClient$9;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->setBucketAcl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
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

.field final synthetic val$request:Lcom/obs/services/model/SetBucketAclRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketAclRequest;)V
    .registers 3

    .line 383
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$9;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$9;->val$request:Lcom/obs/services/model/SetBucketAclRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$9;->val$request:Lcom/obs/services/model/SetBucketAclRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetBucketAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$9;->val$request:Lcom/obs/services/model/SetBucketAclRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetBucketAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 388
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both CannedACL and AccessControlList is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$9;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$9;->val$request:Lcom/obs/services/model/SetBucketAclRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketAclImpl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$3000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 383
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$9;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
