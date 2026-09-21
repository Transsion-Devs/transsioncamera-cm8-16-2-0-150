.class public Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field protected inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/inventory/InventoryConfiguration;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 29
    iput-object p2, p0, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-void
.end method


# virtual methods
.method public getInventoryConfiguration()Lcom/obs/services/model/inventory/InventoryConfiguration;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/inventory/InventoryConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    .line 20
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-object p0
.end method

.method public setInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-void
.end method
