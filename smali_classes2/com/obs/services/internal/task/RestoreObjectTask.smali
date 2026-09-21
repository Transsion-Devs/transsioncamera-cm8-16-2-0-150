.class public Lcom/obs/services/internal/task/RestoreObjectTask;
.super Lcom/obs/services/internal/task/AbstractObsTask;
.source "SourceFile"


# instance fields
.field protected callback:Lcom/obs/services/model/TaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;"
        }
    .end annotation
.end field

.field private taskRequest:Lcom/obs/services/model/RestoreObjectRequest;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/RestoreObjectRequest;Lcom/obs/services/model/TaskCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractObsTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    .line 38
    iput-object p3, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    .line 39
    iput-object p4, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/model/RestoreObjectRequest;Lcom/obs/services/model/TaskCallback;Lcom/obs/services/model/TaskProgressListener;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/AbstractClient;",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;",
            "Lcom/obs/services/model/TaskProgressListener;",
            "Lcom/obs/services/internal/task/DefaultTaskProgressStatus;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v3, p6

    move v5, p7

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/obs/services/internal/task/AbstractObsTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskProgressListener;I)V

    .line 46
    iput-object p3, v0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    .line 47
    iput-object p4, v0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/ObsClient;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractObsTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    return-void
.end method

.method private restoreObjects()V
    .registers 4

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractTask;->getObsClient()Lcom/obs/services/AbstractClient;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    invoke-interface {v0, v1}, Lcom/obs/services/IObsClient;->restoreObjectV2(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->succeedTaskIncrement()V

    .line 70
    iget-object v1, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    invoke-interface {v1, v0}, Lcom/obs/services/model/TaskCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/obs/services/exception/ObsException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_26

    :catch_17
    move-exception v0

    .line 72
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->failTaskIncrement()V

    .line 73
    iget-object v1, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    iget-object v2, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    invoke-interface {v1, v0, v2}, Lcom/obs/services/model/TaskCallback;->onException(Lcom/obs/services/exception/ObsException;Ljava/lang/Object;)V

    .line 75
    :goto_26
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->execTaskIncrement()V

    .line 76
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 77
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getTaskProgressInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_4d

    .line 78
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/services/model/TaskProgressListener;->progressChanged(Lcom/obs/services/model/TaskProgressStatus;)V

    .line 80
    :cond_4d
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getExecTaskNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;->getTotalTaskNum()I

    move-result v1

    if-ne v0, v1, :cond_6a

    .line 81
    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressListener()Lcom/obs/services/model/TaskProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/internal/task/AbstractObsTask;->getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/obs/services/model/TaskProgressListener;->progressChanged(Lcom/obs/services/model/TaskProgressStatus;)V

    :cond_6a
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/obs/services/model/TaskCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-object p0
.end method

.method public getTaskRequest()Lcom/obs/services/model/RestoreObjectRequest;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/obs/services/internal/task/RestoreObjectTask;->restoreObjects()V

    return-void
.end method

.method public setCallback(Lcom/obs/services/model/TaskCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/TaskCallback<",
            "Lcom/obs/services/model/RestoreObjectResult;",
            "Lcom/obs/services/model/RestoreObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->callback:Lcom/obs/services/model/TaskCallback;

    return-void
.end method

.method public setTaskRequest(Lcom/obs/services/model/RestoreObjectRequest;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/obs/services/internal/task/RestoreObjectTask;->taskRequest:Lcom/obs/services/model/RestoreObjectRequest;

    return-void
.end method
