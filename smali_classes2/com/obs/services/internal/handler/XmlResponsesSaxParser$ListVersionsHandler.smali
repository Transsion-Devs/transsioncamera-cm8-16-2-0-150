.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListVersionsHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private final commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private final finalCommonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private insideCommonPrefixes:Z

.field private isAppendable:Z

.field private isLatest:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/VersionOrDeleteMarker;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private listingTruncated:Z

.field private needDecode:Z

.field private nextMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private requestMaxKeys:J

.field private requestPrefix:Ljava/lang/String;

.field private size:J

.field private storageClass:Ljava/lang/String;

.field private versionId:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1099
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->items:Ljava/util/List;

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->commonPrefixes:Ljava/util/List;

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->finalCommonPrefixes:Ljava/util/List;

    const/4 v0, 0x0

    .line 1111
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isLatest:Z

    const-wide/16 v1, 0x0

    .line 1119
    iput-wide v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->size:J

    .line 1125
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    .line 1136
    iput-wide v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->requestMaxKeys:J

    .line 1138
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->listingTruncated:Z

    return-void
.end method

.method private addVersionOrDeleteMarker(Ljava/lang/String;)V
    .registers 7

    .line 1299
    new-instance v0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    invoke-direct {v0}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;-><init>()V

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->bucketName:Ljava/lang/String;

    .line 1300
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->bucketName(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->key:Ljava/lang/String;

    .line 1301
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->key(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->versionId:Ljava/lang/String;

    .line 1302
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->versionId(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isLatest:Z

    .line 1303
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isLatest(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->lastModified:Ljava/util/Date;

    .line 1304
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified(Ljava/util/Date;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    .line 1305
    invoke-virtual {v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->owner(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    .line 1307
    const-string v1, "Version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 1308
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->etag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->etag(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->size:J

    .line 1309
    invoke-virtual {p1, v0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->size(J)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->storageClass:Ljava/lang/String;

    .line 1310
    invoke-static {v0}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    .line 1311
    invoke-virtual {p1, v2}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isDeleteMarker(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isAppendable:Z

    .line 1312
    invoke-virtual {p1, v0}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->appendable(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    .line 1313
    invoke-virtual {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->builder()Lcom/obs/services/model/VersionOrDeleteMarker;

    move-result-object p1

    .line 1315
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-direct {p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->reset()V

    return-void

    .line 1317
    :cond_5f
    const-string v1, "DeleteMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    const/4 p1, 0x0

    .line 1318
    invoke-virtual {v0, p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->etag(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1319
    invoke-virtual {v0, v3, v4}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->size(J)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object v0

    .line 1320
    invoke-virtual {v0, p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 1321
    invoke-virtual {p1, v0}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isDeleteMarker(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    .line 1322
    invoke-virtual {p1, v2}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->appendable(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;

    move-result-object p1

    .line 1323
    invoke-virtual {p1}, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->builder()Lcom/obs/services/model/VersionOrDeleteMarker;

    move-result-object p1

    .line 1325
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    invoke-direct {p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->reset()V

    :cond_8b
    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    .line 1205
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->key:Ljava/lang/String;

    .line 1206
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->versionId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1207
    iput-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isLatest:Z

    .line 1208
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->lastModified:Ljava/util/Date;

    .line 1209
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->etag:Ljava/lang/String;

    .line 1210
    iput-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isAppendable:Z

    const-wide/16 v1, 0x0

    .line 1211
    iput-wide v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->size:J

    .line 1212
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->storageClass:Ljava/lang/String;

    .line 1213
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method private setBaseInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1277
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1278
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->bucketName:Ljava/lang/String;

    return-void

    .line 1279
    :cond_b
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    if-nez v0, :cond_1a

    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1280
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->requestPrefix:Ljava/lang/String;

    return-void

    .line 1281
    :cond_1a
    const-string v0, "KeyMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1282
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->keyMarker:Ljava/lang/String;

    return-void

    .line 1283
    :cond_25
    const-string v0, "NextKeyMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1284
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->nextMarker:Ljava/lang/String;

    return-void

    .line 1285
    :cond_30
    const-string v0, "VersionIdMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1286
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->versionIdMarker:Ljava/lang/String;

    return-void

    .line 1287
    :cond_3b
    const-string v0, "NextVersionIdMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1288
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->nextVersionIdMarker:Ljava/lang/String;

    return-void

    .line 1289
    :cond_46
    const-string v0, "MaxKeys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1290
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->requestMaxKeys:J

    return-void

    .line 1291
    :cond_55
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1292
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->listingTruncated:Z

    return-void

    .line 1293
    :cond_64
    const-string v0, "Delimiter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 1294
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->delimiter:Ljava/lang/String;

    :cond_6e
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1227
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1230
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->key:Ljava/lang/String;

    goto/16 :goto_f5

    .line 1231
    :cond_f
    const-string v0, "VersionId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1232
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->versionId:Ljava/lang/String;

    goto/16 :goto_f5

    .line 1233
    :cond_1b
    const-string v0, "IsLatest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1234
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isLatest:Z

    goto/16 :goto_f5

    .line 1235
    :cond_2b
    const-string v0, "LastModified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1237
    :try_start_33
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->lastModified:Ljava/util/Date;
    :try_end_39
    .catch Ljava/text/ParseException; {:try_start_33 .. :try_end_39} :catch_3b

    goto/16 :goto_f5

    :catch_3b
    move-exception v0

    .line 1239
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1240
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for LastModified in bucket\'s versions listing output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_f5

    .line 1245
    :cond_60
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1246
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->etag:Ljava/lang/String;

    goto/16 :goto_f5

    .line 1247
    :cond_6c
    const-string v0, "Size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1248
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->size:J

    goto/16 :goto_f5

    .line 1249
    :cond_7c
    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1250
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->storageClass:Ljava/lang/String;

    goto/16 :goto_f5

    .line 1251
    :cond_88
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1252
    const-string v0, "Appendable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->isAppendable:Z

    goto :goto_f5

    .line 1253
    :cond_99
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1254
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    if-nez v0, :cond_ac

    .line 1255
    new-instance v0, Lcom/obs/services/model/Owner;

    invoke-direct {v0}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    .line 1257
    :cond_ac
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    goto :goto_f5

    .line 1258
    :cond_b2
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1259
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    if-eqz v0, :cond_f5

    .line 1260
    invoke-virtual {v0, p2}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_f5

    .line 1262
    :cond_c2
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_d4

    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1263
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 1264
    :cond_d4
    const-string v0, "CommonPrefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    const/4 p2, 0x0

    .line 1265
    iput-boolean p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    goto :goto_f5

    .line 1266
    :cond_e0
    const-string v0, "EncodingType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1267
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->encodingType:Ljava/lang/String;

    .line 1268
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    const/4 p2, 0x1

    .line 1269
    iput-boolean p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    .line 1273
    :cond_f5
    :goto_f5
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->addVersionOrDeleteMarker(Ljava/lang/String;)V

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 1155
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1171
    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->finalCommonPrefixes:Ljava/util/List;

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v1, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1173
    :cond_1e
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->finalCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 2

    .line 1151
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->delimiter:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 1197
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/VersionOrDeleteMarker;",
            ">;"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/VersionOrDeleteMarker;

    .line 1164
    invoke-virtual {v1}, Lcom/obs/services/model/VersionOrDeleteMarker;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/VersionOrDeleteMarker;->setKey(Ljava/lang/String;)V

    goto :goto_6

    .line 1166
    :cond_20
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->items:Ljava/util/List;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 2

    .line 1181
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->keyMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .registers 2

    .line 1189
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->nextMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .registers 1

    .line 1193
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->nextVersionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestMaxKeys()J
    .registers 3

    .line 1201
    iget-wide v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->requestMaxKeys:J

    return-wide v0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .registers 2

    .line 1177
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->requestPrefix:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .registers 1

    .line 1185
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public isListingTruncated()Z
    .registers 1

    .line 1159
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->listingTruncated:Z

    return p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 1218
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1219
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/obs/services/model/Owner;

    return-void

    .line 1220
    :cond_10
    const-string v0, "CommonPrefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    .line 1221
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    :cond_1b
    return-void
.end method
