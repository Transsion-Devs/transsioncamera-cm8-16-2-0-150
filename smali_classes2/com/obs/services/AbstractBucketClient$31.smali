.class Lcom/obs/services/AbstractBucketClient$31;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->deleteInventoryConfiguration(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
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

.field final synthetic val$request:Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)V
    .registers 3

    .line 978
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$31;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$31;->val$request:Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$31;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$31;->val$request:Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->deleteInventoryConfigurationImpl(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$5200(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 978
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$31;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
