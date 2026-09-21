.class public Lcom/obs/services/model/SetObjectMetadataRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private encodeHeaders:Z

.field private removeUnset:Z

.field private final replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionId:Ljava/lang/String;

.field private webSiteRedirectLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    .line 41
    new-instance v0, Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectRepleaceMetadata;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    .line 41
    new-instance v0, Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectRepleaceMetadata;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    .line 41
    new-instance v0, Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectRepleaceMetadata;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    .line 70
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAllUserMetadata(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 180
    invoke-virtual {p0}, Lcom/obs/services/model/SetObjectMetadataRequest;->getAllUserMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/obs/services/model/SetObjectMetadataRequest;->getAllUserMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllUserMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->userMetadata:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->userMetadata:Ljava/util/Map;

    .line 313
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->userMetadata:Ljava/util/Map;

    return-object p0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpires()Ljava/lang/String;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectRepleaceMetadata;->getExpires()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/obs/services/model/SetObjectMetadataRequest;->getAllUserMetadata()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getUserMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 192
    invoke-virtual {p0}, Lcom/obs/services/model/SetObjectMetadataRequest;->getAllUserMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public getWebSiteRedirectLocation()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->webSiteRedirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public isEncodeHeaders()Z
    .registers 1

    .line 339
    iget-boolean p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    return p0
.end method

.method public isRemoveUnset()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->removeUnset:Z

    return p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setCacheControl(Ljava/lang/String;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setContentDisposition(Ljava/lang/String;)V

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 2

    .line 306
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setContentEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .registers 2

    .line 230
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setContentLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectRepleaceMetadata;->setExpires(Ljava/lang/String;)V

    return-void
.end method

.method public setIsEncodeHeaders(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    return-void
.end method

.method public setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setRemoveUnset(Z)V
    .registers 2

    .line 157
    iput-boolean p1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->removeUnset:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public setWebSiteRedirectLocation(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->webSiteRedirectLocation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetObjectMetadataRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webSiteRedirectLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->webSiteRedirectLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removeUnset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->removeUnset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->userMetadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/SetObjectMetadataRequest;->encodeHeaders:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
