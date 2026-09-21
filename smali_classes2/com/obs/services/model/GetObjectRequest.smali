.class public Lcom/obs/services/model/GetObjectRequest;
.super Lcom/obs/services/model/GetObjectMetadataRequest;
.source "SourceFile"


# instance fields
.field private autoUnzipResponse:Z

.field private cacheOption:Lcom/obs/services/model/CacheOptionEnum;

.field private ifMatchTag:Ljava/lang/String;

.field private ifModifiedSince:Ljava/util/Date;

.field private ifNoneMatchTag:Ljava/lang/String;

.field private ifUnmodifiedSince:Ljava/util/Date;

.field private imageProcess:Ljava/lang/String;

.field private progressInterval:J

.field private progressListener:Lcom/obs/services/model/ProgressListener;

.field private rangeEnd:Ljava/lang/Long;

.field private rangeStart:Ljava/lang/Long;

.field private replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

.field private requestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const-wide/32 v0, 0x19000

    .line 50
    iput-wide v0, p0, Lcom/obs/services/model/GetObjectRequest;->progressInterval:J

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const-wide/32 v0, 0x19000

    .line 50
    iput-wide v0, p0, Lcom/obs/services/model/GetObjectRequest;->progressInterval:J

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    .line 73
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>()V

    .line 29
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const-wide/32 v0, 0x19000

    .line 50
    iput-wide v0, p0, Lcom/obs/services/model/GetObjectRequest;->progressInterval:J

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    .line 88
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheOption()Lcom/obs/services/model/CacheOptionEnum;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-object p0
.end method

.method public getIfMatchTag()Ljava/lang/String;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->ifMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfModifiedSince()Ljava/util/Date;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getIfNoneMatchTag()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-object p0
.end method

.method public getIfUnmodifiedSince()Ljava/util/Date;
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getImageProcess()Ljava/lang/String;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->imageProcess:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressInterval()J
    .registers 3

    .line 339
    iget-wide v0, p0, Lcom/obs/services/model/GetObjectRequest;->progressInterval:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/obs/services/model/ProgressListener;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-object p0
.end method

.method public getRangeEnd()Ljava/lang/Long;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->rangeEnd:Ljava/lang/Long;

    return-object p0
.end method

.method public getRangeStart()Ljava/lang/Long;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->rangeStart:Ljava/lang/Long;

    return-object p0
.end method

.method public getReplaceMetadata()Lcom/obs/services/model/ObjectRepleaceMetadata;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    return-object p0
.end method

.method public getRequestParameters()Ljava/util/Map;
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

    .line 354
    iget-object p0, p0, Lcom/obs/services/model/GetObjectRequest;->requestParameters:Ljava/util/Map;

    return-object p0
.end method

.method public getSseCHeader()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getTtl()J
    .registers 3

    .line 382
    iget-wide v0, p0, Lcom/obs/services/model/GetObjectRequest;->ttl:J

    return-wide v0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public isAutoUnzipResponse()Z
    .registers 1

    .line 415
    iget-boolean p0, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    return p0
.end method

.method public isEncodeHeaders()Z
    .registers 1

    .line 450
    iget-boolean p0, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    return p0
.end method

.method public setAutoUnzipResponse(Z)V
    .registers 2

    .line 431
    iput-boolean p1, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    return-void
.end method

.method public setCacheOption(Lcom/obs/services/model/CacheOptionEnum;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->cacheOption:Lcom/obs/services/model/CacheOptionEnum;

    return-void
.end method

.method public setIfMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->ifMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 215
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->ifModifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setIfNoneMatchTag(Ljava/lang/String;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    return-void
.end method

.method public setIfUnmodifiedSince(Ljava/util/Date;)V
    .registers 2

    .line 240
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    return-void
.end method

.method public setImageProcess(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->imageProcess:Ljava/lang/String;

    return-void
.end method

.method public setIsEncodeHeaders(Z)V
    .registers 2

    .line 441
    iput-boolean p1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    return-void
.end method

.method public setProgressInterval(J)V
    .registers 3

    .line 350
    iput-wide p1, p0, Lcom/obs/services/model/GetObjectRequest;->progressInterval:J

    return-void
.end method

.method public setProgressListener(Lcom/obs/services/model/ProgressListener;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->progressListener:Lcom/obs/services/model/ProgressListener;

    return-void
.end method

.method public setRangeEnd(Ljava/lang/Long;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->rangeEnd:Ljava/lang/Long;

    return-void
.end method

.method public setRangeStart(Ljava/lang/Long;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->rangeStart:Ljava/lang/Long;

    return-void
.end method

.method public setReplaceMetadata(Lcom/obs/services/model/ObjectRepleaceMetadata;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    return-void
.end method

.method public setRequestParameters(Ljava/util/Map;)V
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

    .line 399
    iput-object p1, p0, Lcom/obs/services/model/GetObjectRequest;->requestParameters:Ljava/util/Map;

    return-void
.end method

.method public setSseCHeader(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setTtl(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    const-wide/32 v0, 0x3f480

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    :cond_d
    const-wide/32 p1, 0x15180

    .line 395
    :cond_10
    iput-wide p1, p0, Lcom/obs/services/model/GetObjectRequest;->ttl:J

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetObjectRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->rangeStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rangeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->rangeEnd:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->replaceMetadata:Lcom/obs/services/model/ObjectRepleaceMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifModifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->ifModifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifUnmodifiedSince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->ifUnmodifiedSince:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->ifMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifNoneMatchTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->ifNoneMatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectRequest;->imageProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoUnzipResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/model/GetObjectRequest;->autoUnzipResponse:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
