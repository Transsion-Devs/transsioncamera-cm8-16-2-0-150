.class public Lcom/obs/services/model/UploadPartRequest;
.super Lcom/obs/services/model/AbstractMultipartRequest;
.source "SourceFile"


# instance fields
.field private attachMd5:Z

.field private autoClose:Z

.field private contentMd5:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private input:Ljava/io/InputStream;

.field private offset:J

.field private partNumber:I

.field private partSize:Ljava/lang/Long;

.field private progressInterval:J

.field private progressListener:Lcom/obs/services/model/ProgressListener;

.field private sseCHeader:Lcom/obs/services/model/SseCHeader;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    .line 66
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 96
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    .line 97
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/io/File;)V
    .registers 9

    .line 136
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    .line 137
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/obs/services/model/UploadPartRequest;->partSize:Ljava/lang/Long;

    .line 140
    iput-wide p4, p0, Lcom/obs/services/model/UploadPartRequest;->offset:J

    .line 141
    iput-object p6, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/io/InputStream;)V
    .registers 7

    .line 114
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    .line 115
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/obs/services/model/UploadPartRequest;->partSize:Ljava/lang/Long;

    .line 118
    iput-object p4, p0, Lcom/obs/services/model/UploadPartRequest;->input:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 80
    invoke-direct {p0}, Lcom/obs/services/model/AbstractMultipartRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    const-wide/32 v0, 0x19000

    .line 52
    iput-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 83
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getContentMd5()Ljava/lang/String;
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->contentMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    return-object p0
.end method

.method public getInput()Ljava/io/InputStream;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->input:Ljava/io/InputStream;

    return-object p0
.end method

.method public getOffset()J
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->offset:J

    return-wide v0
.end method

.method public getPartNumber()I
    .registers 1

    .line 191
    iget p0, p0, Lcom/obs/services/model/UploadPartRequest;->partNumber:I

    return p0
.end method

.method public getPartSize()Ljava/lang/Long;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->partSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getProgressInterval()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/obs/services/model/ProgressListener;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-object p0
.end method

.method public getSseCHeader()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public isAttachMd5()Z
    .registers 1

    .line 275
    iget-boolean p0, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    return p0
.end method

.method public isAutoClose()Z
    .registers 1

    .line 317
    iget-boolean p0, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    return p0
.end method

.method public setAttachMd5(Z)V
    .registers 2

    .line 287
    iput-boolean p1, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    return-void
.end method

.method public setAutoClose(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/obs/services/model/UploadPartRequest;->autoClose:Z

    return-void
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->input:Ljava/io/InputStream;

    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->input:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setOffset(J)V
    .registers 3

    .line 182
    iput-wide p1, p0, Lcom/obs/services/model/UploadPartRequest;->offset:J

    return-void
.end method

.method public setPartNumber(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/obs/services/model/UploadPartRequest;->partNumber:I

    return-void
.end method

.method public setPartSize(Ljava/lang/Long;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->partSize:Ljava/lang/Long;

    return-void
.end method

.method public setProgressInterval(J)V
    .registers 3

    .line 369
    iput-wide p1, p0, Lcom/obs/services/model/UploadPartRequest;->progressInterval:J

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/ProgressListener;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-void
.end method

.method public setSseCHeader(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/obs/services/model/UploadPartRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadPartRequest [uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/AbstractMultipartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/UploadPartRequest;->partNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", partSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadPartRequest;->partSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/UploadPartRequest;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadPartRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadPartRequest;->contentMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attachMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/UploadPartRequest;->attachMd5:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadPartRequest;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/UploadPartRequest;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
