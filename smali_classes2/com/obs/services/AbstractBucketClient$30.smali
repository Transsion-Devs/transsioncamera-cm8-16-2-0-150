.class Lcom/obs/services/AbstractBucketClient$30;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->listInventoryConfiguration(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)V
    .registers 3

    .line 963
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$30;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$30;->val$request:Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$30;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$30;->val$request:Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->listInventoryConfigurationImpl(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$5100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 963
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$30;->action()Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method
