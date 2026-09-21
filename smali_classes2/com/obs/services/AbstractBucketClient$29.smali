.class Lcom/obs/services/AbstractBucketClient$29;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractBucketClient;->getInventoryConfiguration(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractBucketClient;

.field final synthetic val$request:Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)V
    .registers 3

    .line 949
    iput-object p1, p0, Lcom/obs/services/AbstractBucketClient$29;->this$0:Lcom/obs/services/AbstractBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractBucketClient$29;->val$request:Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
    .registers 2

    .line 952
    iget-object v0, p0, Lcom/obs/services/AbstractBucketClient$29;->this$0:Lcom/obs/services/AbstractBucketClient;

    iget-object p0, p0, Lcom/obs/services/AbstractBucketClient$29;->val$request:Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->getInventoryConfigurationImpl(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractBucketClient;->access$5000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 949
    invoke-virtual {p0}, Lcom/obs/services/AbstractBucketClient$29;->action()Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method
