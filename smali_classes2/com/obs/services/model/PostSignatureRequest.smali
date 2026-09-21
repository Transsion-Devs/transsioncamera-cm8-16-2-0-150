.class public Lcom/obs/services/model/PostSignatureRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expires:J

.field private expiryDate:Ljava/util/Date;

.field private formParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private objectKey:Ljava/lang/String;

.field private requestDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    .line 62
    iput-object p3, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    .line 95
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->requestDate:Ljava/util/Date;

    .line 96
    iput-object p4, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    .line 77
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expiryDate:Ljava/util/Date;

    .line 78
    iput-object p2, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    .line 40
    iput-wide v0, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    .line 112
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expiryDate:Ljava/util/Date;

    .line 113
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->requestDate:Ljava/util/Date;

    .line 114
    iput-object p3, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getConditions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/obs/services/model/PostSignatureRequest;->conditions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/PostSignatureRequest;->conditions:Ljava/util/List;

    .line 246
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->conditions:Ljava/util/List;

    return-object p0
.end method

.method public getExpires()J
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    return-wide v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->expiryDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getFormParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/obs/services/model/PostSignatureRequest;->formParams:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/PostSignatureRequest;->formParams:Ljava/util/Map;

    .line 184
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->formParams:Ljava/util/Map;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestDate()Ljava/util/Date;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->requestDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->conditions:Ljava/util/List;

    return-void
.end method

.method public setExpires(J)V
    .registers 3

    .line 172
    iput-wide p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .registers 2

    .line 153
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->expiryDate:Ljava/util/Date;

    return-void
.end method

.method public setFormParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->formParams:Ljava/util/Map;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setRequestDate(Ljava/util/Date;)V
    .registers 2

    .line 134
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/PostSignatureRequest;->requestDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostSignatureRequest [requestDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureRequest;->requestDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureRequest;->expiryDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/PostSignatureRequest;->expires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", formParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PostSignatureRequest;->formParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PostSignatureRequest;->conditions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
