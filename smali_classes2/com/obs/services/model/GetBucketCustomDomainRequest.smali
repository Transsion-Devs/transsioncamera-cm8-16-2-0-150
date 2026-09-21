.class public Lcom/obs/services/model/GetBucketCustomDomainRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method
