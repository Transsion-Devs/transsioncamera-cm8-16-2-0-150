.class public Lcom/obs/services/model/BaseObjectRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field protected encodeHeaders:Z

.field protected isIgnorePort:Z

.field protected objectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    .line 31
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsIgnorePort()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/obs/services/model/BaseObjectRequest;->isIgnorePort:Z

    return p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public isEncodeHeaders()Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    return p0
.end method

.method public setIsEncodeHeaders(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    return-void
.end method

.method public setIsIgnorePort(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/obs/services/model/BaseObjectRequest;->isIgnorePort:Z

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseObjectRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
