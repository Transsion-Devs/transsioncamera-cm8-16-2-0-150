.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketCustomDomainHandler"
.end annotation


# instance fields
.field private bucketCustomDomainInfo:Lcom/obs/services/model/BucketCustomDomainInfo;

.field private createTime:Ljava/util/Date;

.field private domainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1047
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 1048
    new-instance v0, Lcom/obs/services/model/BucketCustomDomainInfo;

    invoke-direct {v0}, Lcom/obs/services/model/BucketCustomDomainInfo;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->bucketCustomDomainInfo:Lcom/obs/services/model/BucketCustomDomainInfo;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1060
    const-string v0, "DomainName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1061
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->domainName:Ljava/lang/String;

    return-void

    .line 1062
    :cond_b
    const-string v0, "CreateTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1064
    :try_start_13
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->createTime:Ljava/util/Date;
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 1066
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1067
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-ISO8601 date for CreateTime in domain listing output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 1071
    :cond_3e
    const-string p2, "Domains"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1072
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->bucketCustomDomainInfo:Lcom/obs/services/model/BucketCustomDomainInfo;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->domainName:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->createTime:Ljava/util/Date;

    invoke-virtual {p1, p2, p0}, Lcom/obs/services/model/BucketCustomDomainInfo;->addDomain(Ljava/lang/String;Ljava/util/Date;)Lcom/obs/services/model/BucketCustomDomainInfo$Domains;

    :cond_4f
    :goto_4f
    return-void
.end method

.method public getBucketTagInfo()Lcom/obs/services/model/BucketCustomDomainInfo;
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->bucketCustomDomainInfo:Lcom/obs/services/model/BucketCustomDomainInfo;

    return-object p0
.end method
