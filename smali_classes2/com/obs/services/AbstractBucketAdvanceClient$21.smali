.class Lcom/obs/services/AbstractBucketAdvanceClient$21;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketNotification(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
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

.field final synthetic val$request:Lcom/obs/services/model/SetBucketNotificationRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketNotificationRequest;)V
    .registers 3

    .line 685
    iput-object p1, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->val$request:Lcom/obs/services/model/SetBucketNotificationRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->val$request:Lcom/obs/services/model/SetBucketNotificationRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetBucketNotificationRequest;->getBucketNotificationConfiguration()Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object v0

    if-nez v0, :cond_12

    .line 690
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->val$request:Lcom/obs/services/model/SetBucketNotificationRequest;

    new-instance v1, Lcom/obs/services/model/BucketNotificationConfiguration;

    invoke-direct {v1}, Lcom/obs/services/model/BucketNotificationConfiguration;-><init>()V

    invoke-virtual {v0, v1}, Lcom/obs/services/model/SetBucketNotificationRequest;->setBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)V

    .line 692
    :cond_12
    iget-object v0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->this$0:Lcom/obs/services/AbstractBucketAdvanceClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketAdvanceClient$21;->val$request:Lcom/obs/services/model/SetBucketNotificationRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketNotificationImpl(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketAdvanceClient;->access$2300(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 685
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketAdvanceClient$21;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
