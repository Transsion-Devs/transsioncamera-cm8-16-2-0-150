.class public Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field protected inventoryConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getInventoryConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;->inventoryConfigurations:Ljava/util/List;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;->inventoryConfigurations:Ljava/util/List;

    .line 15
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;->inventoryConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public setInventoryConfigurations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/inventory/InventoryConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;->inventoryConfigurations:Ljava/util/List;

    return-void
.end method
