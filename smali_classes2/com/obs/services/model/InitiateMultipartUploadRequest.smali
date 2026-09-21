.class public Lcom/obs/services/model/InitiateMultipartUploadRequest;
.super Lcom/obs/services/model/PutObjectBasicRequest;
.source "SourceFile"


# instance fields
.field private encodingType:Ljava/lang/String;

.field private expires:I

.field private metadata:Lcom/obs/services/model/ObjectMetadata;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 60
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getExpires()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->expires:I

    return p0
.end method

.method public getMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getWebSiteRedirectLocation()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectMetadata;->getWebSiteRedirectLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setExpires(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->expires:I

    return-void
.end method

.method public setMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public setWebSiteRedirectLocation(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    if-eqz p0, :cond_7

    .line 126
    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectMetadata;->setWebSiteRedirectLocation(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitiateMultipartUploadRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseKmsHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->metadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->expires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/InitiateMultipartUploadRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
