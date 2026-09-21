.class public Lcom/obs/services/model/UploadFileRequest;
.super Lcom/obs/services/model/PutObjectBasicRequest;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/Callback;

.field private checkpointFile:Ljava/lang/String;

.field private enableCheckSum:Z

.field private enableCheckpoint:Z

.field private encodingType:Ljava/lang/String;

.field private objectMetadata:Lcom/obs/services/model/ObjectMetadata;

.field private partSize:J

.field private progressInterval:J

.field private progressListener:Lcom/obs/services/model/ProgressListener;

.field private taskNum:I

.field private uploadFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const-wide/32 v0, 0x900000

    .line 26
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 57
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const-wide/32 v0, 0x900000

    .line 26
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 72
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 108
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 112
    iput-wide p4, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9

    .line 130
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 131
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 134
    iput-wide p4, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    .line 135
    iput p6, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

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

    .line 157
    invoke-direct/range {v0 .. v8}, Lcom/obs/services/model/UploadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .registers 11

    .line 181
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 182
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 184
    iput-wide p4, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    .line 185
    iput p6, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    .line 186
    iput-object p3, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 187
    iput-boolean p7, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 188
    iput-object p8, p0, Lcom/obs/services/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Z)V
    .registers 10

    .line 215
    invoke-direct/range {p0 .. p8}, Lcom/obs/services/model/UploadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V

    .line 216
    iput-boolean p9, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 89
    invoke-direct {p0}, Lcom/obs/services/model/PutObjectBasicRequest;-><init>()V

    const-wide/32 v0, 0x900000

    .line 26
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    .line 38
    iput-boolean v0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    const-wide/32 v0, 0x19000

    .line 46
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    .line 90
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/obs/services/model/UploadFileRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/Callback;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->callback:Lcom/obs/services/model/Callback;

    return-object p0
.end method

.method public getCheckpointFile()Ljava/lang/String;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getPartSize()J
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressInterval()J
    .registers 3

    .line 392
    iget-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/obs/services/model/ProgressListener;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-object p0
.end method

.method public getTaskNum()I
    .registers 1

    .line 250
    iget p0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    return p0
.end method

.method public getUploadFile()Ljava/lang/String;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableCheckSum()Z
    .registers 1

    .line 352
    iget-boolean p0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    return p0
.end method

.method public isEnableCheckpoint()Z
    .registers 1

    .line 294
    iget-boolean p0, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    return p0
.end method

.method public setCallback(Lcom/obs/services/model/Callback;)V
    .registers 2

    .line 428
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->callback:Lcom/obs/services/model/Callback;

    return-void
.end method

.method public setCheckpointFile(Ljava/lang/String;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckSum(Z)V
    .registers 2

    .line 363
    iput-boolean p1, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    return-void
.end method

.method public setEnableCheckpoint(Z)V
    .registers 2

    .line 304
    iput-boolean p1, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 412
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setObjectMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public setPartSize(J)V
    .registers 6

    const-wide/32 v0, 0x19000

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    .line 236
    iput-wide v0, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    return-void

    :cond_a
    const-wide v0, 0x140000000L

    .line 238
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    return-void
.end method

.method public setProgressInterval(J)V
    .registers 3

    .line 403
    iput-wide p1, p0, Lcom/obs/services/model/UploadFileRequest;->progressInterval:J

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/ProgressListener;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-void
.end method

.method public setTaskNum(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 263
    iput v0, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    return-void

    :cond_6
    const/16 v0, 0x3e8

    .line 265
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    return-void
.end method

.method public setUploadFile(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadFileRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/UploadFileRequest;->partSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/UploadFileRequest;->taskNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uploadFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadFileRequest;->uploadFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enableCheckpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckpoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", checkpointFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadFileRequest;->checkpointFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/UploadFileRequest;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableCheckSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/UploadFileRequest;->enableCheckSum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/UploadFileRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
