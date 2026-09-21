.class public Lcom/obs/services/model/BucketCustomDomainInfo;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/BucketCustomDomainInfo$Domains;
    }
.end annotation


# instance fields
.field private domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCustomDomainInfo$Domains;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public addDomain(Ljava/lang/String;Ljava/util/Date;)Lcom/obs/services/model/BucketCustomDomainInfo$Domains;
    .registers 4

    .line 39
    new-instance v0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 40
    invoke-virtual {p0}, Lcom/obs/services/model/BucketCustomDomainInfo;->getDomains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDomains()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCustomDomainInfo$Domains;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/obs/services/model/BucketCustomDomainInfo;->domains:Ljava/util/List;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketCustomDomainInfo;->domains:Ljava/util/List;

    .line 35
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/BucketCustomDomainInfo;->domains:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketCustomDomainInfo [domains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/BucketCustomDomainInfo;->getDomains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
