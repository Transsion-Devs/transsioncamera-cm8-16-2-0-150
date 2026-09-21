.class Lcom/obs/services/AbstractBucketClient$7;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/BucketMetadataInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/BucketMetadataInfoRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$7;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$7;->val$request:Lcom/obs/services/model/BucketMetadataInfoRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$7;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$7;->val$request:Lcom/obs/services/model/BucketMetadataInfoRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$2800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 324
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$7;->action()Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p0

    return-object p0
.end method
