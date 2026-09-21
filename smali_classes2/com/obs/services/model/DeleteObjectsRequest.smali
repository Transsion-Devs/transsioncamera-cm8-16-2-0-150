.class public Lcom/obs/services/model/DeleteObjectsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private encodingType:Ljava/lang/String;

.field private keyAndVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/KeyAndVersion;",
            ">;"
        }
    .end annotation
.end field

.field private quiet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 46
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Lcom/obs/services/model/KeyAndVersion;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lcom/obs/services/model/DeleteObjectsRequest;->quiet:Z

    .line 64
    invoke-virtual {p0, p3}, Lcom/obs/services/model/DeleteObjectsRequest;->setKeyAndVersions([Lcom/obs/services/model/KeyAndVersion;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Lcom/obs/services/model/KeyAndVersion;Ljava/lang/String;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 82
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 83
    iput-boolean p2, p0, Lcom/obs/services/model/DeleteObjectsRequest;->quiet:Z

    .line 84
    invoke-virtual {p0, p3}, Lcom/obs/services/model/DeleteObjectsRequest;->setKeyAndVersions([Lcom/obs/services/model/KeyAndVersion;)V

    .line 85
    iput-object p4, p0, Lcom/obs/services/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addKeyAndVersion(Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;
    .registers 3

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/model/DeleteObjectsRequest;->addKeyAndVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;

    move-result-object p0

    return-object p0
.end method

.method public addKeyAndVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/KeyAndVersion;
    .registers 4

    .line 151
    new-instance v0, Lcom/obs/services/model/KeyAndVersion;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/KeyAndVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/obs/services/model/DeleteObjectsRequest;->getKeyAndVersionsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyAndVersions()[Lcom/obs/services/model/KeyAndVersion;
    .registers 2

    .line 173
    invoke-virtual {p0}, Lcom/obs/services/model/DeleteObjectsRequest;->getKeyAndVersionsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/obs/services/model/DeleteObjectsRequest;->getKeyAndVersionsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/obs/services/model/KeyAndVersion;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/obs/services/model/KeyAndVersion;

    return-object p0
.end method

.method public getKeyAndVersionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/KeyAndVersion;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->keyAndVersions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->keyAndVersions:Ljava/util/List;

    .line 138
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->keyAndVersions:Ljava/util/List;

    return-object p0
.end method

.method public isQuiet()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->quiet:Z

    return p0
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyAndVersions([Lcom/obs/services/model/KeyAndVersion;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 183
    array-length v0, p1

    if-lez v0, :cond_10

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->keyAndVersions:Ljava/util/List;

    :cond_10
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/obs/services/model/DeleteObjectsRequest;->quiet:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteObjectsRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quiet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/DeleteObjectsRequest;->quiet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyAndVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsRequest;->keyAndVersions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
