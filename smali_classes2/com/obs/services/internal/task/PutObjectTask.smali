.class public Lcom/obs/services/internal/task/PutObjectTask;
.super Lcom/obs/services/internal/task/AbstractPutTask;
.source "SourceFile"


# instance fields
.field private taskRequest:Lcom/obs/services/model/PutObjectRequest;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/PutObjectRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/PutObjectRequest;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/PutObjectResult;",
            "Lcom/obs/services/model/PutObjectBasicRequest;",
            ">;",
            "Lcom/obs/services/model/UploadObjectsProgressListener;",
            "Lcom/obs/services/internal/task/UploadTaskProgressStatus;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/internal/task/AbstractPutTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V

    .line 35
    iput-object p3, v0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    return-void
.end method

.method private putObjects()V
    .registers 11

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractTask;->getObsClient()Lcom/obs/services/AbstractClient;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-interface {v0, v1}, Lcom/obs/services/IObsClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskIncrement()V

    .line 50
    new-instance v2, Lcom/obs/services/model/PutObjectResult;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectResult;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectResult;->getEtag()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectResult;->getObjectUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getStatusCode()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/obs/services/model/PutObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 52
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/obs/services/model/TaskCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_39
    .catch Lcom/obs/services/exception/ObsException; {:try_start_0 .. :try_end_39} :catch_a2
    .catchall {:try_start_0 .. :try_end_39} :catchall_a0

    .line 57
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 58
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_60

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 62
    :cond_60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result v1

    if-ne v0, v1, :cond_7d

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 67
    :cond_7d
    iget-object v0, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 70
    :goto_8d
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addEndingTaskSize(J)V

    .line 72
    :cond_98
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->removeTaskTable(Ljava/lang/String;)V

    return-void

    :catchall_a0
    move-exception v0

    goto :goto_108

    :catch_a2
    move-exception v0

    .line 54
    :try_start_a3
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 55
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-interface {v1, v0, v2}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_a0

    .line 57
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 58
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    if-eqz v0, :cond_f7

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_da

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 62
    :cond_da
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result v1

    if-ne v0, v1, :cond_f7

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 67
    :cond_f7
    iget-object v0, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v1

    if-eqz v1, :cond_98

    goto :goto_8d

    .line 57
    :goto_108
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 58
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    if-eqz v1, :cond_14c

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_12f

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 62
    :cond_12f
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result v2

    if-ne v1, v2, :cond_14c

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 67
    :cond_14c
    iget-object v1, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 70
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v3

    invoke-interface {v2}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addEndingTaskSize(J)V

    .line 72
    :cond_167
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->removeTaskTable(Ljava/lang/String;)V

    .line 73
    throw v0
.end method


# virtual methods
.method public getTaskRequest()Lcom/obs/services/model/PutObjectRequest;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/obs/services/internal/task/PutObjectTask;->putObjects()V

    return-void
.end method

.method public setTaskRequest(Lcom/obs/services/model/PutObjectRequest;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/obs/services/internal/task/PutObjectTask;->taskRequest:Lcom/obs/services/model/PutObjectRequest;

    return-void
.end method
