.class public Lcom/obs/services/model/ObjectMetadata;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private appendable:Z

.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLanguage:Ljava/lang/String;

.field private contentLength:Ljava/lang/Long;

.field private contentMd5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private crc64:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private nextPosition:J

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private webSiteRedirectLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lcom/obs/services/model/ObjectMetadata;->nextPosition:J

    return-void
.end method

.method private isEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p1, :cond_10

    if-nez p2, :cond_b

    goto :goto_10

    .line 359
    :cond_b
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 114
    invoke-virtual {p0}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllMetadata()Ljava/util/Map;
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

    .line 94
    iget-object v0, p0, Lcom/obs/services/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 95
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/obs/services/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 97
    :cond_d
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object p0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->cacheControl:Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()Ljava/lang/Long;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentLength:Ljava/lang/Long;

    return-object p0
.end method

.method public getContentMd5()Ljava/lang/String;
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getCrc64()Ljava/lang/String;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->crc64:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getExpires()Ljava/lang/String;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->expires:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/obs/services/model/HeaderResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNextPosition()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/obs/services/model/ObjectMetadata;->nextPosition:J

    return-wide v0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/obs/services/model/StorageClassEnum;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 125
    invoke-virtual {p0}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 343
    invoke-virtual {p0}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/obs/services/model/ObjectMetadata;->isEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 345
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebSiteRedirectLocation()Ljava/lang/String;
    .registers 1

    .line 396
    iget-object p0, p0, Lcom/obs/services/model/ObjectMetadata;->webSiteRedirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public isAppendable()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/obs/services/model/ObjectMetadata;->appendable:Z

    return p0
.end method

.method public setAppendable(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/obs/services/model/ObjectMetadata;->appendable:Z

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(Ljava/lang/Long;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentLength:Ljava/lang/Long;

    return-void
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCrc64(Ljava/lang/String;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->crc64:Ljava/lang/String;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->etag:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->expires:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .registers 2

    .line 161
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
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

    .line 148
    iput-object p1, p0, Lcom/obs/services/internal/service/InternalHeaderResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public setNextPosition(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/obs/services/model/ObjectMetadata;->nextPosition:J

    return-void
.end method

.method public setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
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

    .line 417
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-void
.end method

.method public setWebSiteRedirectLocation(Ljava/lang/String;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/obs/services/model/ObjectMetadata;->webSiteRedirectLocation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectMetadata [metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->cacheControl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->expires:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->contentMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webSiteRedirectLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectMetadata;->webSiteRedirectLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/ObjectMetadata;->nextPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appendable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/ObjectMetadata;->appendable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
