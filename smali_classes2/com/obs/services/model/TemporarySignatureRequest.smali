.class public Lcom/obs/services/model/TemporarySignatureRequest;
.super Lcom/obs/services/model/AbstractTemporarySignatureRequest;
.source "SourceFile"


# instance fields
.field private expires:J

.field private requestDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>()V

    const-wide/16 v0, 0x12c

    .line 28
    iput-wide v0, p0, Lcom/obs/services/model/TemporarySignatureRequest;->expires:J

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;J)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;J)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;J)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Date;)V
    .registers 8

    .line 83
    invoke-direct {p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->method:Lcom/obs/services/model/HttpMethodEnum;

    .line 85
    iput-object p2, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->bucketName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->objectKey:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->specialParam:Lcom/obs/services/model/SpecialParamEnum;

    .line 88
    iput-wide p5, p0, Lcom/obs/services/model/TemporarySignatureRequest;->expires:J

    .line 89
    invoke-static {p7}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->requestDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getExpires()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/obs/services/model/TemporarySignatureRequest;->expires:J

    return-wide v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/obs/services/model/TemporarySignatureRequest;->requestDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public setExpires(J)V
    .registers 3

    .line 112
    iput-wide p1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->expires:J

    return-void
.end method

.method public setRequestDate(Ljava/util/Date;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 132
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->requestDate:Ljava/util/Date;

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->requestDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemporarySignatureRequest [method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->method:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", specialParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->specialParam:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->expires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/TemporarySignatureRequest;->requestDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;->getQueryParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
