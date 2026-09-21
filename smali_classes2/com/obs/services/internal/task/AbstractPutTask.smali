.class public abstract Lcom/obs/services/internal/task/AbstractPutTask;
.super Lcom/obs/services/internal/task/AbstractTask;
.source "SourceFile"


# instance fields
.field private callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;"
        }
    .end annotation
.end field

.field private progressListener:Lcom/obs/services/model/UploadObjectsProgressListener;

.field private taskProgressInterval:I

.field private taskStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;",
            "Lcom/obs/services/model/UploadObjectsProgressListener;",
            "Lcom/obs/services/internal/task/UploadTaskProgressStatus;",
            "I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    .line 38
    iput-object p3, p0, Lcom/obs/services/internal/task/AbstractPutTask;->callback:Lcom/obs/services/model/TaskCallback;

    .line 39
    iput-object p4, p0, Lcom/obs/services/internal/task/AbstractPutTask;->progressListener:Lcom/obs/services/model/UploadObjectsProgressListener;

    .line 40
    iput-object p5, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    .line 41
    iput p6, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskProgressInterval:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractPutTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractPutTask;->progressListener:Lcom/obs/services/model/UploadObjectsProgressListener;

    return-object p0
.end method

.method public getTaskProgressInterval()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskProgressInterval:I

    return p0
.end method

.method public getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    return-object p0
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractPutTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/UploadObjectsProgressListener;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractPutTask;->progressListener:Lcom/obs/services/model/UploadObjectsProgressListener;

    return-void
.end method

.method public setTaskProgressInterval(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskProgressInterval:I

    return-void
.end method

.method public setTaskStatus(Lcom/obs/services/internal/task/UploadTaskProgressStatus;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractPutTask;->taskStatus:Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    return-void
.end method
