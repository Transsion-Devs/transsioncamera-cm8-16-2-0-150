.class public Lcom/obs/services/model/fs/ObsFSFile;
.super Lcom/obs/services/model/fs/ObsFSFolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V
    .registers 7

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/obs/services/model/fs/ObsFSFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/io/File;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 5

    .line 140
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 141
    new-instance v0, Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 142
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->appendFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/io/InputStream;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 5

    .line 156
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 157
    new-instance v0, Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 158
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->appendFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public attribute()Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 1

    .line 44
    invoke-super {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->attribute()Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object p0

    return-object p0
.end method

.method public drop()Lcom/obs/services/model/fs/DropFileResult;
    .registers 5

    .line 217
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 218
    new-instance v0, Lcom/obs/services/model/fs/DropFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/fs/DropFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->dropFile(Lcom/obs/services/model/fs/DropFileRequest;)Lcom/obs/services/model/fs/DropFileResult;

    move-result-object p0

    return-object p0
.end method

.method public read()Lcom/obs/services/model/fs/ReadFileResult;
    .registers 4

    .line 56
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 57
    new-instance v0, Lcom/obs/services/model/fs/ReadFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/fs/ReadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->readFile(Lcom/obs/services/model/fs/ReadFileRequest;)Lcom/obs/services/model/fs/ReadFileResult;

    move-result-object p0

    return-object p0
.end method

.method public read(JJ)Lcom/obs/services/model/fs/ReadFileResult;
    .registers 8

    .line 72
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 73
    new-instance v0, Lcom/obs/services/model/fs/ReadFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/fs/ReadFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/GetObjectRequest;->setRangeStart(Ljava/lang/Long;)V

    .line 75
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/GetObjectRequest;->setRangeEnd(Ljava/lang/Long;)V

    .line 76
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->readFile(Lcom/obs/services/model/fs/ReadFileRequest;)Lcom/obs/services/model/fs/ReadFileResult;

    move-result-object p0

    return-object p0
.end method

.method public rename(Ljava/lang/String;)Lcom/obs/services/model/fs/RenameResult;
    .registers 5

    .line 187
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 188
    new-instance v0, Lcom/obs/services/model/fs/RenameRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/obs/services/model/fs/RenameRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->renameFile(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method public truncate(J)Lcom/obs/services/model/fs/TruncateFileResult;
    .registers 6

    .line 203
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 204
    new-instance v0, Lcom/obs/services/model/fs/TruncateFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/obs/services/model/fs/TruncateFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->truncateFile(Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/File;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 4

    const-wide/16 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/model/fs/ObsFSFile;->write(Ljava/io/File;J)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/File;J)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 10

    .line 92
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 93
    new-instance v0, Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    .line 94
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/ObsClient;->writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/InputStream;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 4

    const-wide/16 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/model/fs/ObsFSFile;->write(Ljava/io/InputStream;J)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/InputStream;J)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 10

    .line 124
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 125
    new-instance v0, Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/obs/services/model/fs/WriteFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 126
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/ObsClient;->writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method
