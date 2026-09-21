.class Lcom/obs/services/AbstractBucketAdvanceClient$4;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/BucketPolicyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

.field final synthetic val$request:Lcom/obs/services/model/BaseBucketRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V
    .registers 3

    .line 178
    iput-object p1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$4;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketAdvanceClient$4;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/BucketPolicyResponse;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$4;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$4;->val$request:Lcom/obs/services/model/BaseBucketRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketPolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$300(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 178
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketAdvanceClient$4;->action()Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    return-object p0
.end method
