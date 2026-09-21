.class public Lcom/obs/services/model/CreateVirtualBucketRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private agencyId:Ljava/lang/String;

.field private bucketAlias:Ljava/lang/String;

.field private bucketName1:Ljava/lang/String;

.field private bucketName2:Ljava/lang/String;

.field private regionId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->regionId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->token:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName1:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName2:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketAlias:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->agencyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgencyId()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->agencyId:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketAlias()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketName1()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName1:Ljava/lang/String;

    return-object p0
.end method

.method public getBucketName2()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName2:Ljava/lang/String;

    return-object p0
.end method

.method public getRegionId()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->regionId:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setAgencyId(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->agencyId:Ljava/lang/String;

    return-void
.end method

.method public setBucketAlias(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketAlias:Ljava/lang/String;

    return-void
.end method

.method public setBucketName1(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName1:Ljava/lang/String;

    return-void
.end method

.method public setBucketName2(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName2:Ljava/lang/String;

    return-void
.end method

.method public setRegionId(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->regionId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateVirtualBucketRequest{regionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bucketName1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bucketName2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketName2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bucketAlias=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->bucketAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", agencyId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CreateVirtualBucketRequest;->agencyId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
