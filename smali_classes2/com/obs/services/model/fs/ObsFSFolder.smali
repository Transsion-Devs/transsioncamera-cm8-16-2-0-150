.class public Lcom/obs/services/model/fs/ObsFSFolder;
.super Lcom/obs/services/model/PutObjectResult;
.source "SourceFile"


# instance fields
.field protected innerClient:Lcom/obs/services/ObsClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V
    .registers 7

    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/obs/services/model/PutObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attribute()Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 51
    iget-object v0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/ObsFSAttribute;

    return-object p0
.end method

.method protected checkInternalClient()V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    const-string v0, "ObsClient is null"

    invoke-static {p0, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dropFolder()Lcom/obs/services/model/TaskProgressStatus;
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 79
    new-instance v0, Lcom/obs/services/model/fs/DropFolderRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/fs/DropFolderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractFileClient;->dropFolder(Lcom/obs/services/model/fs/DropFolderRequest;)Lcom/obs/services/model/TaskProgressStatus;

    move-result-object p0

    return-object p0
.end method

.method public rename(Ljava/lang/String;)Lcom/obs/services/model/fs/RenameResult;
    .registers 5

    .line 65
    invoke-virtual {p0}, Lcom/obs/services/model/fs/ObsFSFolder;->checkInternalClient()V

    .line 66
    new-instance v0, Lcom/obs/services/model/fs/RenameRequest;

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/obs/services/model/fs/RenameRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractPFSClient;->renameFolder(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;

    move-result-object p0

    return-object p0
.end method

.method protected setInnerClient(Lcom/obs/services/ObsClient;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/fs/ObsFSFolder;->innerClient:Lcom/obs/services/ObsClient;

    return-void
.end method
