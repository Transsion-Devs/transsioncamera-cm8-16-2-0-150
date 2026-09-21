.class public Lcom/obs/services/internal/task/DropFolderTask;
.super Lcom/obs/services/internal/task/AbstractObsTask;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isRequesterPays:Z

.field private objectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractObsTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskProgressListener;ILcom/obs/services/model/TaskCallback;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "I",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/task/AbstractObsTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskProgressListener;I)V

    .line 39
    iput-object p3, v0, Lcom/obs/services/internal/task/DropFolderTask;->objectKey:Ljava/lang/String;

    .line 40
    iput-object p7, v0, Lcom/obs/services/internal/task/DropFolderTask;->callback:Lcom/obs/services/model/TaskCallback;

    .line 41
    iput-boolean p8, v0, Lcom/obs/services/internal/task/DropFolderTask;->isRequesterPays:Z

    return-void
.end method

.method private dropFolder()V
    .registers 4

    .line 61
    new-instance v0, Lcom/obs/services/model/DeleteObjectRequest;

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractTask;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/internal/task/DropFolderTask;->objectKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-boolean v1, p0, Lcom/obs/services/internal/task/DropFolderTask;->isRequesterPays:Z

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractTask;->getObsClient()Lcom/obs/services/AbstractClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/obs/services/IObsClient;->deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskIncrement()V

    .line 65
    iget-object p0, p0, Lcom/obs/services/internal/task/DropFolderTask;->callback:Lcom/obs/services/model/TaskCallback;

    invoke-interface {p0, v0}, Lcom/obs/services/model/TaskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/obs/services/internal/task/DropFolderTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/obs/services/internal/task/DropFolderTask;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/obs/services/internal/task/DropFolderTask;->dropFolder()V

    return-void
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/DeleteObjectResult;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/obs/services/internal/task/DropFolderTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setObjeceKey(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/obs/services/internal/task/DropFolderTask;->objectKey:Ljava/lang/String;

    return-void
.end method
