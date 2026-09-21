.class public Lcom/obs/services/model/SetBucketWebsiteRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field private websiteConfig:Lcom/obs/services/model/WebsiteConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/obs/services/model/SetBucketWebsiteRequest;->websiteConfig:Lcom/obs/services/model/WebsiteConfiguration;

    return-void
.end method


# virtual methods
.method public getWebsiteConfig()Lcom/obs/services/model/WebsiteConfiguration;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/obs/services/model/SetBucketWebsiteRequest;->websiteConfig:Lcom/obs/services/model/WebsiteConfiguration;

    return-object p0
.end method

.method public setWebsiteConfig(Lcom/obs/services/model/WebsiteConfiguration;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/SetBucketWebsiteRequest;->websiteConfig:Lcom/obs/services/model/WebsiteConfiguration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBucketWebsiteRequest [websiteConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketWebsiteRequest;->websiteConfig:Lcom/obs/services/model/WebsiteConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
