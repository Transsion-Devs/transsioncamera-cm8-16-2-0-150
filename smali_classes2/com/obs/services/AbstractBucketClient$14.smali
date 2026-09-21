.class Lcom/obs/services/AbstractBucketClient$14;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->getBucketStoragePolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/BucketStoragePolicyConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/BaseBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V
    .registers 3

    .line 541
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$14;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$14;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$14;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$14;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketStoragePolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$3500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 541
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$14;->action()Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p0

    return-object p0
.end method
