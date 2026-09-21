.class public Lcom/obs/services/model/HeaderResponse;
.super Lcom/obs/services/internal/service/InternalHeaderResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/internal/service/InternalHeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->originalHeaders:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->originalHeaders:Ljava/util/Map;

    .line 50
    :cond_d
    iget-object p0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->originalHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/obs/services/model/HeaderResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "request-id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_f

    .line 60
    const-string p0, ""

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    .line 38
    :cond_d
    iget-object p0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 69
    iget p0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->statusCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderResponse [responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->statusCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
