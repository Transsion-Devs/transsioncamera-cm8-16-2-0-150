.class public Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field protected inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getInventoryConfiguration()Lcom/obs/services/model/inventory/InventoryConfiguration;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    if-nez v0, :cond_b

    .line 10
    new-instance v0, Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/inventory/InventoryConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    .line 12
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-object p0
.end method

.method public setInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-void
.end method
