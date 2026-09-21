.class public Lcom/obs/services/internal/task/ResumableUploadTask;
.super Lcom/obs/services/internal/task/AbstractPutTask;
.source "SourceFile"


# instance fields
.field private taskRequest:Lcom/obs/services/model/UploadFileRequest;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/UploadObjectsProgressListener;Lcom/obs/services/internal/task/UploadTaskProgressStatus;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/UploadFileRequest;",
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

    .line 36
    iput-object p3, v0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    return-void
.end method

.method private resumableUpload()V
    .registers 11

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractTask;->getObsClient()Lcom/obs/services/AbstractClient;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-interface {v0, v1}, Lcom/obs/services/IObsClient;->uploadFile(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskIncrement()V

    .line 51
    new-instance v2, Lcom/obs/services/model/PutObjectResult;

    invoke-virtual {v0}, Lcom/obs/services/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/obs/services/model/CompleteMultipartUploadResult;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/obs/services/model/CompleteMultipartUploadResult;->getEtag()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v0}, Lcom/obs/services/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/obs/services/model/CompleteMultipartUploadResult;->getObjectUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0}, Lcom/obs/services/model/HeaderResponse;->getStatusCode()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/obs/services/model/PutObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 53
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/obs/services/model/TaskCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_39
    .catch Lcom/obs/services/exception/ObsException; {:try_start_0 .. :try_end_39} :catch_a2
    .catchall {:try_start_0 .. :try_end_39} :catchall_a0

    .line 58
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_60

    .line 61
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 63
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

    .line 64
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 68
    :cond_7d
    iget-object v0, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 71
    :goto_8d
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addEndingTaskSize(J)V

    .line 73
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

    .line 55
    :try_start_a3
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 56
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getCallback()Lcom/obs/services/model/TaskCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-interface {v1, v0, v2}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_a0

    .line 58
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    if-eqz v0, :cond_f7

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_da

    .line 61
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 63
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

    .line 64
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 68
    :cond_f7
    iget-object v0, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v1

    if-eqz v1, :cond_98

    goto :goto_8d

    .line 58
    :goto_108
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    if-eqz v1, :cond_14c

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskProgressInterval()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_12f

    .line 61
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 63
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

    .line 64
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getProgressListener()Lcom/obs/services/model/UploadObjectsProgressListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/obs/services/model/UploadObjectsProgressListener;->progressChanged(Lcom/obs/services/model/UploadProgressStatus;)V

    .line 68
    :cond_14c
    iget-object v1, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 71
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object v3

    invoke-interface {v2}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->addEndingTaskSize(J)V

    .line 73
    :cond_167
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractPutTask;->getTaskStatus()Lcom/obs/services/internal/task/UploadTaskProgressStatus;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/task/UploadTaskProgressStatus;->removeTaskTable(Ljava/lang/String;)V

    .line 74
    throw v0
.end method


# virtual methods
.method public getTaskRequest()Lcom/obs/services/model/UploadFileRequest;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/obs/services/internal/task/ResumableUploadTask;->resumableUpload()V

    return-void
.end method

.method public setTaskRequest(Lcom/obs/services/model/UploadFileRequest;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/obs/services/internal/task/ResumableUploadTask;->taskRequest:Lcom/obs/services/model/UploadFileRequest;

    return-void
.end method
