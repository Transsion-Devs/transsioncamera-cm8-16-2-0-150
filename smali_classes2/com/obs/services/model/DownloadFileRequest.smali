.class public Lcom/obs/services/model/DownloadFileRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private cacheOption:Lcom/obs/services/model/CacheOptionEnum;

.field private checkpointFile:Ljava/lang/String;

.field private downloadFile:Ljava/lang/String;

.field private enableCheckpoint:Z

.field private ifMatchTag:Ljava/lang/String;

.field private ifModifiedSince:Ljava/util/Date;

.field private ifNoneMatchTag:Ljava/lang/String;

.field private ifUnmodifiedSince:Ljava/util/Date;

.field private partSize:J

.field private progressInterval:J

.field private progressListener:Lcom/obs/services/model/ProgressListener;

.field private taskNum:I

.field private ttl:J

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    const-wide/32 v0, 0x900000

    .line 28
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    const-wide/32 v0, 0x19000

    .line 48
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    .line 63
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    const-wide/32 v0, 0x900000

    .line 28
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    const-wide/32 v0, 0x19000

    .line 48
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    .line 79
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 96
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    const-wide/32 v0, 0x19000

    .line 48
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    .line 97
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    .line 100
    iput-wide p4, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/obs/services/model/DownloadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 142
    invoke-direct/range {v0 .. v8}, Lcom/obs/services/model/DownloadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .registers 11

    .line 166
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    const-wide/32 v0, 0x19000

    .line 48
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    .line 167
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 169
    iput-wide p4, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    .line 170
    iput p6, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    .line 171
    iput-object p3, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    .line 172
    iput-boolean p7, p0, Lcom/obs/services/model/DownloadFileRequest;->enableCheckpoint:Z

    .line 173
    iput-object p8, p0, Lcom/obs/services/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 199
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    const-wide/32 v0, 0x19000

    .line 48
    iput-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    .line 200
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 202
    iput-wide p4, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    .line 203
    iput p6, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    .line 204
    iput-object p3, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    .line 205
    iput-boolean p7, p0, Lcom/obs/services/model/DownloadFileRequest;->enableCheckpoint:Z

    .line 206
    iput-object p8, p0, Lcom/obs/services/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    .line 207
    iput-object p9, p0, Lcom/obs/services/model/DownloadFileRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheOption()Lcom/obs/services/model/CacheOptionEnum;
    .registers 1

    .line 487
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-object p0
.end method

.method public getCheckpointFile()Ljava/lang/String;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-object p0
.end method

.method public getIfMatchTag()Ljava/lang/String;
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->ifMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfModifiedSince()Ljava/util/Date;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getIfNoneMatchTag()Ljava/lang/String;
    .registers 1

    .line 404
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfUnmodifiedSince()Ljava/util/Date;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPartSize()J
    .registers 3

    .line 235
    iget-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressInterval()J
    .registers 3

    .line 467
    iget-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/obs/services/model/ProgressListener;
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-object p0
.end method

.method public getTaskNum()I
    .registers 1

    .line 256
    iget p0, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    return p0
.end method

.method public getTempDownloadFile()Ljava/lang/String;
    .registers 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTtl()J
    .registers 3

    .line 506
    iget-wide v0, p0, Lcom/obs/services/model/DownloadFileRequest;->ttl:J

    return-wide v0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableCheckpoint()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lcom/obs/services/model/DownloadFileRequest;->enableCheckpoint:Z

    return p0
.end method

.method public setCacheOption(Lcom/obs/services/model/CacheOptionEnum;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-void
.end method

.method public setCheckpointFile(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFile(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckpoint(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lcom/obs/services/model/DownloadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public setIfMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 342
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifModifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setIfNoneMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfUnmodifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 367
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifUnmodifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setPartSize(J)V
    .registers 3

    .line 245
    iput-wide p1, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    return-void
.end method

.method public setProgressInterval(J)V
    .registers 3

    .line 478
    iput-wide p1, p0, Lcom/obs/services/model/DownloadFileRequest;->progressInterval:J

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/ProgressListener;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-void
.end method

.method public setTaskNum(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 269
    iput v0, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    return-void

    :cond_6
    const/16 v0, 0x3e8

    .line 271
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    return-void
.end method

.method public setTtl(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    const-wide/32 v0, 0x3f480

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    :cond_d
    const-wide/32 p1, 0x15180

    .line 519
    :cond_10
    iput-wide p1, p0, Lcom/obs/services/model/DownloadFileRequest;->ttl:J

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 438
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadFileRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/DownloadFileRequest;->partSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/DownloadFileRequest;->taskNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checkpointFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->checkpointFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enableCheckpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/DownloadFileRequest;->enableCheckpoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ifModifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifUnmodifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifNoneMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->ifNoneMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DownloadFileRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
