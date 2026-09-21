.class public Lcom/obs/services/model/inventory/InventoryConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/inventory/InventoryConfiguration$OptionalFieldOptions;,
        Lcom/obs/services/model/inventory/InventoryConfiguration$IncludedObjectVersionsOptions;,
        Lcom/obs/services/model/inventory/InventoryConfiguration$InventoryFormatOptions;,
        Lcom/obs/services/model/inventory/InventoryConfiguration$FrequencyOptions;
    }
.end annotation


# instance fields
.field protected configurationId:Ljava/lang/String;

.field protected destinationBucket:Ljava/lang/String;

.field protected frequency:Ljava/lang/String;

.field protected includedObjectVersions:Ljava/lang/String;

.field protected inventoryFormat:Ljava/lang/String;

.field protected inventoryPrefix:Ljava/lang/String;

.field protected isEnabled:Ljava/lang/Boolean;

.field protected objectPrefix:Ljava/lang/String;

.field protected optionalFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    .line 110
    iput-object p3, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 125
    :cond_4
    instance-of v1, p1, Lcom/obs/services/model/inventory/InventoryConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    .line 126
    check-cast p1, Lcom/obs/services/model/inventory/InventoryConfiguration;

    .line 127
    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getConfigurationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getObjectPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getFrequency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getInventoryFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getDestinationBucket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getInventoryPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getIncludedObjectVersions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getOptionalFields()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    return v0

    :cond_78
    return v2
.end method

.method public getConfigurationId()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    .line 11
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    return-object p0
.end method

.method public getDestinationBucket()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    .line 66
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    return-object p0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    .line 22
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFrequency()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    .line 44
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    return-object p0
.end method

.method public getIncludedObjectVersions()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    .line 88
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    return-object p0
.end method

.method public getInventoryFormat()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    .line 55
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInventoryPrefix()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    .line 77
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectPrefix()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    .line 33
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionalFields()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    .line 99
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .registers 10

    .line 118
    iget-object v0, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    iget-object v1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    iget-object v4, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    iget-object v6, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    iget-object v7, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    iget-object v8, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setConfigurationId(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->configurationId:Ljava/lang/String;

    return-void
.end method

.method public setDestinationBucket(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->destinationBucket:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->isEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->frequency:Ljava/lang/String;

    return-void
.end method

.method public setIncludedObjectVersions(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    return-void
.end method

.method public setInventoryFormat(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryFormat:Ljava/lang/String;

    return-void
.end method

.method public setInventoryPrefix(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->inventoryPrefix:Ljava/lang/String;

    return-void
.end method

.method public setObjectPrefix(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->objectPrefix:Ljava/lang/String;

    return-void
.end method

.method public setOptionalFields(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/obs/services/model/inventory/InventoryConfiguration;->optionalFields:Ljava/util/ArrayList;

    return-void
.end method
