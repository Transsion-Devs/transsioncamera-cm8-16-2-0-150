.class public Lcom/obs/services/model/PolicyTempSignatureRequest;
.super Lcom/obs/services/model/AbstractTemporarySignatureRequest;
.source "SourceFile"


# instance fields
.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/PolicyConditionItem;",
            ">;"
        }
    .end annotation
.end field

.field private expires:J

.field private expiryDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>()V

    const-wide/16 v0, 0x12c

    .line 32
    iput-wide v0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x12c

    .line 32
    iput-wide p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-wide p4, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/AbstractTemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x12c

    .line 32
    iput-wide p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    .line 67
    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expiryDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public generatePolicy()Ljava/lang/String;
    .registers 10

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 94
    invoke-static {}, Lcom/obs/services/internal/utils/ServiceUtils;->getExpirationDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expiryDate:Ljava/util/Date;

    if-nez v2, :cond_24

    .line 97
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1d

    const-wide/16 v5, 0x12c

    :cond_1d
    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 100
    :cond_24
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v2, "{\"expiration\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"conditions\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->conditions:Ljava/util/List;

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 104
    iget-object p0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->conditions:Ljava/util/List;

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_59
    const-string p0, "]}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConditions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PolicyConditionItem;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->conditions:Ljava/util/List;

    return-object p0
.end method

.method public getExpires()J
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    return-wide v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expiryDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public setConditions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PolicyConditionItem;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->conditions:Ljava/util/List;

    return-void
.end method

.method public setExpires(J)V
    .registers 3

    .line 145
    iput-wide p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expires:J

    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .registers 2

    .line 126
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PolicyTempSignatureRequest;->expiryDate:Ljava/util/Date;

    return-void
.end method
