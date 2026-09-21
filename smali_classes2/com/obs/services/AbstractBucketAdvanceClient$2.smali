.class Lcom/obs/services/AbstractBucketAdvanceClient$2;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketLifecycle(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
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
.field final synthetic this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

.field final synthetic val$request:Lcom/obs/services/model/SetBucketLifecycleRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketLifecycleRequest;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$2;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketAdvanceClient$2;->val$request:Lcom/obs/services/model/SetBucketLifecycleRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$2;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$2;->val$request:Lcom/obs/services/model/SetBucketLifecycleRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketLifecycleConfigurationImpl(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$100(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 100
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketAdvanceClient$2;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
