.class Lcom/obs/services/AbstractBucketAdvanceClient$23;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketFSStatus(Lcom/obs/services/model/fs/GetBucketFSStatusRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/GetBucketFSStatusResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/GetBucketFSStatusRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/fs/GetBucketFSStatusRequest;)V
    .registers 3

    .line 714
    iput-object p1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$23;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketAdvanceClient$23;->val$request:Lcom/obs/services/model/fs/GetBucketFSStatusRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 2

    .line 718
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$23;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$23;->val$request:Lcom/obs/services/model/fs/GetBucketFSStatusRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$2500(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 714
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketAdvanceClient$23;->action()Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method
