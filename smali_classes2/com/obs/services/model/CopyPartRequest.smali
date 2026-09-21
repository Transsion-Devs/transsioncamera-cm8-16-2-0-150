.class public Lcom/obs/services/model/CopyPartRequest;
.super Lcom/obs/services/model/AbstractMultipartRequest;
.source "SourceFile"


# instance fields
.field private byteRangeEnd:Ljava/lang/Long;

.field private byteRangeStart:Ljava/lang/Long;

.field private destinationBucketName:Ljava/lang/String;

.field private destinationObjectKey:Ljava/lang/String;

.field private partNumber:I

.field private sourceBucketName:Ljava/lang/String;

.field private sourceObjectKey:Ljava/lang/String;

.field private sseCHeaderDestination:Lcom/obs/services/model/SseCHeader;

.field private sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 67
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 68
    iput-object p1, p0, Lcom/obs/services/model/AbstractMultipartRequest;->uploadId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/obs/services/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/obs/services/model/CopyPartRequest;->sourceObjectKey:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    .line 73
    iput p6, p0, Lcom/obs/services/model/CopyPartRequest;->partNumber:I

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getByteRangeEnd()Ljava/lang/Long;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeEnd:Ljava/lang/Long;

    return-object p0
.end method

.method public getByteRangeStart()Ljava/lang/Long;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeStart:Ljava/lang/Long;

    return-object p0
.end method

.method public getDestinationBucketName()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDestinationObjectKey()Ljava/lang/String;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPartNumber()I
    .registers 1

    .line 160
    iget p0, p0, Lcom/obs/services/model/CopyPartRequest;->partNumber:I

    return p0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceObjectKey()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->sourceObjectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSseCHeaderDestination()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderDestination:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getSseCHeaderSource()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/obs/services/model/CopyPartRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setByteRangeEnd(Ljava/lang/Long;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeEnd:Ljava/lang/Long;

    return-void
.end method

.method public setByteRangeStart(Ljava/lang/Long;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeStart:Ljava/lang/Long;

    return-void
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .registers 2

    .line 171
    iput p1, p0, Lcom/obs/services/model/CopyPartRequest;->partNumber:I

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->sourceObjectKey:Ljava/lang/String;

    return-void
.end method

.method public setSseCHeaderDestination(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderDestination:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setSseCHeaderSource(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/obs/services/model/CopyPartRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyPartRequest [uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractMultipartRequest;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceBucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceObjectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->sourceObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationBucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationObjectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->destinationObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", byteRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", byteRangeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->byteRangeEnd:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeaderSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderSource:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeaderDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->sseCHeaderDestination:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/obs/services/model/CopyPartRequest;->partNumber:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
