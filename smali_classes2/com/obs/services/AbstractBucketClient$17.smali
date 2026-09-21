.class Lcom/obs/services/AbstractBucketClient$17;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->getBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/BucketCors;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/BaseBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V
    .registers 3

    .line 633
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$17;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$17;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/BucketCors;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$17;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$17;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketCorsImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$3800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 633
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$17;->action()Lcom/obs/services/model/BucketCors;

    move-result-object p0

    return-object p0
.end method
