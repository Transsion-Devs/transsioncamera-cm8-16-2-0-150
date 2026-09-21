.class public Lcom/oef/services/model/QueryAsynchFetchJobsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private err:Ljava/lang/String;

.field private job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

.field private requestId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private wait:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 44
    new-instance v0, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    invoke-direct {v0}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;-><init>()V

    iput-object v0, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryAsynchFetchJobsResult [requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->wait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", job url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    .line 194
    invoke-virtual {v1}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", job bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    invoke-virtual {v1}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", job key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    .line 195
    invoke-virtual {v1}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", job callbackurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    invoke-virtual {v1}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;->getCallBackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", job callbackbody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oef/services/model/QueryAsynchFetchJobsResult;->job:Lcom/oef/services/model/CreateAsyncFetchJobsRequest;

    .line 196
    invoke-virtual {p0}, Lcom/oef/services/model/CreateAsyncFetchJobsRequest;->getCallBackBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
