.class public Lcom/obs/services/model/GenericRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected httpMethod:Lcom/obs/services/model/HttpMethodEnum;

.field private isRequesterPays:Z

.field protected userHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->userHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->userHeaders:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addUserHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 66
    iget-object p0, p0, Lcom/obs/services/model/GenericRequest;->userHeaders:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpMethod()Lcom/obs/services/model/HttpMethodEnum;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-object p0
.end method

.method public getUserHeaders()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/obs/services/model/GenericRequest;->userHeaders:Ljava/util/HashMap;

    return-object p0
.end method

.method public isRequesterPays()Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lcom/obs/services/model/GenericRequest;->isRequesterPays:Z

    return p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lcom/obs/services/model/GenericRequest;->isRequesterPays:Z

    return-void
.end method

.method public setUserHeaders(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->userHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericRequest [isRequesterPays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/GenericRequest;->isRequesterPays:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
