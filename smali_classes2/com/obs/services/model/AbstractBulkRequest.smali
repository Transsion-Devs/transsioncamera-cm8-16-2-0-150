.class public abstract Lcom/obs/services/model/AbstractBulkRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field protected listener:Lcom/obs/services/model/TaskProgressListener;

.field protected taskProgressInterval:I

.field protected taskQueueNum:I

.field protected taskThreadNum:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    const/16 v0, 0xa

    .line 27
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskThreadNum:I

    const/16 v0, 0x4e20

    .line 29
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskQueueNum:I

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskProgressInterval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    const/16 v0, 0xa

    .line 27
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskThreadNum:I

    const/16 v0, 0x4e20

    .line 29
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskQueueNum:I

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskProgressInterval:I

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProgressInterval()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskProgressInterval:I

    return p0
.end method

.method public getProgressListener()Lcom/obs/services/model/TaskProgressListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/obs/services/model/AbstractBulkRequest;->listener:Lcom/obs/services/model/TaskProgressListener;

    return-object p0
.end method

.method public getTaskQueueNum()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskQueueNum:I

    return p0
.end method

.method public getTaskThreadNum()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskThreadNum:I

    return p0
.end method

.method public setProgressInterval(I)V
    .registers 2

    if-lez p1, :cond_5

    .line 120
    iput p1, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskProgressInterval:I

    return-void

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ProgressInterval should be greater than 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProgressListener(Lcom/obs/services/model/TaskProgressListener;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/obs/services/model/AbstractBulkRequest;->listener:Lcom/obs/services/model/TaskProgressListener;

    return-void
.end method

.method public setTaskQueueNum(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskQueueNum:I

    return-void
.end method

.method public setTaskThreadNum(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/obs/services/model/AbstractBulkRequest;->taskThreadNum:I

    return-void
.end method
