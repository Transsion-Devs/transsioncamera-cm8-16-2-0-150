.class public Lcom/obs/services/model/SetBucketAclRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field private acl:Lcom/obs/services/model/AccessControlList;

.field private cannedACL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/obs/services/model/SetBucketAclRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/obs/services/model/SetBucketAclRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getCannedACL()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/SetBucketAclRequest;->cannedACL:Ljava/lang/String;

    return-object p0
.end method

.method public setAcl(Lcom/obs/services/model/AccessControlList;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/SetBucketAclRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setCannedACL(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/obs/services/model/SetBucketAclRequest;->cannedACL:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBucketAclRequest [acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketAclRequest;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cannedACL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketAclRequest;->cannedACL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
