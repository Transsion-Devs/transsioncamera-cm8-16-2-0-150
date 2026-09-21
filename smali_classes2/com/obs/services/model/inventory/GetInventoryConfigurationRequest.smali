.class public Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field protected configurationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 25
    iput-object p2, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->configurationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfigurationId()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->configurationId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->configurationId:Ljava/lang/String;

    .line 16
    :cond_8
    iget-object p0, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->configurationId:Ljava/lang/String;

    return-object p0
.end method

.method public setConfigurationId(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->configurationId:Ljava/lang/String;

    return-void
.end method
