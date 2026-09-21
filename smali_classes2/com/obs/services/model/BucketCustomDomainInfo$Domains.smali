.class public Lcom/obs/services/model/BucketCustomDomainInfo$Domains;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/BucketCustomDomainInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Domains"
.end annotation


# instance fields
.field private createTime:Ljava/util/Date;

.field private domainName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->domainName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->createTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/util/Date;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDomainName()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->domainName:Ljava/lang/String;

    return-object p0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setDomainName(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->domainName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domains [domainName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketCustomDomainInfo$Domains;->createTime:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
