.class public Lcom/obs/services/model/fs/ObsFSBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field protected innerClient:Lcom/obs/services/ObsClient;

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/obs/services/model/fs/ObsFSBucket;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkInternalClient()V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    const-string v0, "ObsClient is null"

    invoke-static {p0, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->location:Ljava/lang/String;

    return-object p0
.end method

.method public newFile(Ljava/lang/String;Ljava/io/File;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 4

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/model/fs/ObsFSBucket;->newFile(Ljava/lang/String;Ljava/io/File;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public newFile(Ljava/lang/String;Ljava/io/File;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 5

    .line 131
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSBucket;->checkInternalClient()V

    .line 132
    new-instance p3, Lcom/obs/services/model/fs/NewFileRequest;

    iget-object v0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lcom/obs/services/model/fs/NewFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3, p2}, Lcom/obs/services/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 134
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, p3}, Lcom/obs/services/ObsClient;->newFile(Lcom/obs/services/model/fs/NewFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public newFile(Ljava/lang/String;Ljava/io/InputStream;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 4

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/model/fs/ObsFSBucket;->newFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public newFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 5

    .line 94
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSBucket;->checkInternalClient()V

    .line 95
    new-instance p3, Lcom/obs/services/model/fs/NewFileRequest;

    iget-object v0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lcom/obs/services/model/fs/NewFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3, p2}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V

    .line 97
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, p3}, Lcom/obs/services/ObsClient;->newFile(Lcom/obs/services/model/fs/NewFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public newFolder(Ljava/lang/String;)Lcom/obs/services/model/fs/ObsFSFolder;
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSBucket;->checkInternalClient()V

    .line 76
    iget-object v0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    new-instance v1, Lcom/obs/services/model/fs/NewFolderRequest;

    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/model/fs/NewFolderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/obs/services/ObsClient;->newFolder(Lcom/obs/services/model/fs/NewFolderRequest;)Lcom/obs/services/model/fs/ObsFSFolder;

    move-result-object p0

    return-object p0
.end method

.method public setFSStatus(Lcom/obs/services/model/fs/FSStatusEnum;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSBucket;->checkInternalClient()V

    .line 61
    iget-object v0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    new-instance v1, Lcom/obs/services/model/fs/SetBucketFSStatusRequest;

    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSBucket;->bucketName:Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/model/fs/SetBucketFSStatusRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/fs/FSStatusEnum;)V

    invoke-virtual {v0, v1}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketFSStatus(Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setInnerClient(Lcom/obs/services/ObsClient;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/fs/ObsFSBucket;->innerClient:Lcom/obs/services/ObsClient;

    return-void
.end method
