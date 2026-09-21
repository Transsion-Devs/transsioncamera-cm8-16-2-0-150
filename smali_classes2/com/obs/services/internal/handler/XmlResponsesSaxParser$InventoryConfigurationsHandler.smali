.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InventoryConfigurationsHandler"
.end annotation


# instance fields
.field private inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

.field private inventoryConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2144
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfigurations:Ljava/util/ArrayList;

    .line 2147
    new-instance v0, Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/inventory/InventoryConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2158
    const-string v0, "Id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2159
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setConfigurationId(Ljava/lang/String;)V

    .line 2161
    :cond_d
    const-string v0, "IsEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2162
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setEnabled(Ljava/lang/Boolean;)V

    .line 2164
    :cond_1e
    const-string v0, "Prefix"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2165
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->prefix:Ljava/lang/String;

    .line 2167
    :cond_28
    const-string v0, "Filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2168
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setObjectPrefix(Ljava/lang/String;)V

    .line 2170
    :cond_37
    const-string v0, "Format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2171
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setInventoryFormat(Ljava/lang/String;)V

    .line 2173
    :cond_44
    const-string v0, "Bucket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2174
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setDestinationBucket(Ljava/lang/String;)V

    .line 2176
    :cond_51
    const-string v0, "Destination"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2177
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setInventoryPrefix(Ljava/lang/String;)V

    .line 2179
    :cond_60
    const-string v0, "Frequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2180
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setFrequency(Ljava/lang/String;)V

    .line 2182
    :cond_6d
    const-string v0, "IncludedObjectVersions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2183
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/inventory/InventoryConfiguration;->setIncludedObjectVersions(Ljava/lang/String;)V

    .line 2185
    :cond_7a
    const-string v0, "Field"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2186
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {v0}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getOptionalFields()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    :cond_8b
    const-string p2, "InventoryConfiguration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 2189
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfigurations:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    new-instance p1, Lcom/obs/services/model/inventory/InventoryConfiguration;

    invoke-direct {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfiguration:Lcom/obs/services/model/inventory/InventoryConfiguration;

    :cond_a1
    return-void
.end method

.method public getInventoryConfigurations()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation

    .line 2152
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InventoryConfigurationsHandler;->inventoryConfigurations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
