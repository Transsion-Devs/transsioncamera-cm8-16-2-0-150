.class public Lcom/obs/services/model/fs/ListContentSummaryRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private listTimeout:I

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 44
    const-string p1, "/"

    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->delimiter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getListTimeout()I
    .registers 1

    .line 117
    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->listTimeout:I

    return p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->maxKeys:I

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public setListTimeout(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->listTimeout:I

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->maxKeys:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListContentSummaryRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->marker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->maxKeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryRequest;->listTimeout:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
