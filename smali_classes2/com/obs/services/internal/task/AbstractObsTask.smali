.class public abstract Lcom/obs/services/internal/task/AbstractObsTask;
.super Lcom/obs/services/internal/task/AbstractTask;
.source "SourceFile"


# instance fields
.field private progressListener:Lcom/obs/services/model/TaskProgressListener;

.field private progressStatus:Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

.field private taskProgressInterval:I


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;Lcom/obs/services/internal/task/DefaultTaskProgressStatus;Lcom/obs/services/model/TaskProgressListener;I)V
    .registers 6

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/task/AbstractTask;-><init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressStatus:Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    .line 34
    iput-object p4, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressListener:Lcom/obs/services/model/TaskProgressListener;

    .line 35
    iput p5, p0, Lcom/obs/services/internal/task/AbstractObsTask;->taskProgressInterval:I

    return-void
.end method


# virtual methods
.method public getProgressListener()Lcom/obs/services/model/TaskProgressListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressListener:Lcom/obs/services/model/TaskProgressListener;

    return-object p0
.end method

.method public getProgressStatus()Lcom/obs/services/internal/task/DefaultTaskProgressStatus;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressStatus:Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    return-object p0
.end method

.method public getTaskProgressInterval()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/obs/services/internal/task/AbstractObsTask;->taskProgressInterval:I

    return p0
.end method

.method public setProgressListener(Lcom/obs/services/model/TaskProgressListener;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressListener:Lcom/obs/services/model/TaskProgressListener;

    return-void
.end method

.method public setProgressStatus(Lcom/obs/services/internal/task/DefaultTaskProgressStatus;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractObsTask;->progressStatus:Lcom/obs/services/internal/task/DefaultTaskProgressStatus;

    return-void
.end method

.method public setTaskProgressInterval(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/obs/services/internal/task/AbstractObsTask;->taskProgressInterval:I

    return-void
.end method
