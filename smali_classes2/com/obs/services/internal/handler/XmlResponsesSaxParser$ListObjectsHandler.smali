.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListObjectsHandler"
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

.field private currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

.field private currentObject:Lcom/obs/services/model/ObsObject;

.field private currentOwner:Lcom/obs/services/model/Owner;

.field private encodingType:Ljava/lang/String;

.field private final extendCommonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

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

.field private lastKey:Ljava/lang/String;

.field private listingTruncated:Z

.field private needDecode:Z

.field private nextMarker:Ljava/lang/String;

.field private final objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

.field private requestDelimiter:Ljava/lang/String;

.field private requestMarker:Ljava/lang/String;

.field private requestMaxKeys:I

.field private requestPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 190
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->objects:Ljava/util/List;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->commonPrefixes:Ljava/util/List;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->finalCommonPrefixes:Ljava/util/List;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->extendCommonPrefixes:Ljava/util/List;

    .line 215
    iput v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestMaxKeys:I

    .line 217
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->listingTruncated:Z

    return-void
.end method

.method private setCurrentObjectProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 356
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 357
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p1, p2}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    .line 358
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->lastKey:Ljava/lang/String;

    return-void

    .line 359
    :cond_10
    const-string v0, "LastModified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 360
    iget-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    if-nez p1, :cond_c8

    .line 362
    :try_start_1c
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectMetadata;->setLastModified(Ljava/util/Date;)V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 364
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 365
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-ISO8601 date for LastModified in bucket\'s object listing output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_c8

    .line 370
    :cond_4f
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 371
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ObjectMetadata;->setEtag(Ljava/lang/String;)V

    return-void

    .line 372
    :cond_61
    const-string v0, "Size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 373
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectMetadata;->setContentLength(Ljava/lang/Long;)V

    return-void

    .line 374
    :cond_7b
    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 375
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    invoke-static {p2}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectMetadata;->setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    return-void

    .line 376
    :cond_91
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 377
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    if-nez p1, :cond_a4

    .line 378
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    .line 380
    :cond_a4
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {p1, v0}, Lcom/obs/services/model/ObsObject;->setOwner(Lcom/obs/services/model/Owner;)V

    .line 381
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_b1
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 383
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    const-string p1, "Appendable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObjectMetadata;->setAppendable(Z)V

    :cond_c8
    :goto_c8
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 310
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Prefix"

    if-eqz v0, :cond_e

    .line 311
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->bucketName:Ljava/lang/String;

    goto/16 :goto_91

    .line 312
    :cond_e
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    if-nez v0, :cond_1c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 313
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestPrefix:Ljava/lang/String;

    goto/16 :goto_91

    .line 314
    :cond_1c
    const-string v0, "Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 315
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestMarker:Ljava/lang/String;

    goto/16 :goto_91

    .line 316
    :cond_28
    const-string v0, "NextMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 317
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->nextMarker:Ljava/lang/String;

    goto :goto_91

    .line 318
    :cond_33
    const-string v0, "MaxKeys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestMaxKeys:I

    goto :goto_91

    .line 320
    :cond_42
    const-string v0, "Delimiter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 321
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestDelimiter:Ljava/lang/String;

    goto :goto_91

    .line 322
    :cond_4d
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 323
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->listingTruncated:Z

    goto :goto_91

    .line 324
    :cond_5c
    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 325
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->objects:Ljava/util/List;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 326
    :cond_6c
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 327
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    if-eqz v0, :cond_91

    .line 328
    invoke-virtual {v0, p2}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_91

    .line 330
    :cond_7c
    const-string v0, "EncodingType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 331
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->encodingType:Ljava/lang/String;

    .line 332
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    .line 337
    :cond_91
    :goto_91
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->setCurrentObjectProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

    if-eqz v0, :cond_ce

    .line 340
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_ad

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 341
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    goto :goto_ce

    .line 343
    :cond_ad
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_ce

    const-string v0, "MTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 344
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

    invoke-virtual {v0}, Lcom/obs/services/model/ObsObject;->getMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    .line 345
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ObjectMetadata;->setLastModified(Ljava/util/Date;)V

    .line 349
    :cond_ce
    :goto_ce
    const-string p2, "CommonPrefixes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 350
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->extendCommonPrefixes:Ljava/util/List;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 351
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    :cond_e0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->bucketName:Ljava/lang/String;

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

    .line 247
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->finalCommonPrefixes:Ljava/util/List;

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v1, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 250
    :cond_1e
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->finalCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getExtendCommonPrefixes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->extendCommonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/ObsObject;

    .line 260
    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    goto :goto_6

    .line 262
    :cond_20
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->extendCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getExtenedCommonPrefixes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->getExtendCommonPrefixes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMarkerForNextListing()Ljava/lang/String;
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->listingTruncated:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->nextMarker:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->lastKey:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->nextMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getObjects()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/ObsObject;

    .line 241
    invoke-virtual {v1}, Lcom/obs/services/model/ObsObject;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ObsObject;->setObjectKey(Ljava/lang/String;)V

    goto :goto_6

    .line 243
    :cond_20
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->objects:Ljava/util/List;

    return-object p0
.end method

.method public getRequestDelimiter()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestDelimiter:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMarker()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMaxKeys()I
    .registers 1

    .line 278
    iget p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestMaxKeys:I

    return p0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->requestPrefix:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isListingTruncated()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->listingTruncated:Z

    return p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 5

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_2d

    :sswitch_d
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    move v2, v1

    goto :goto_2d

    :sswitch_23
    const-string v0, "CommonPrefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    packed-switch v2, :pswitch_data_5e

    return-void

    .line 297
    :pswitch_31
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentOwner:Lcom/obs/services/model/Owner;

    return-void

    .line 293
    :pswitch_39
    new-instance p1, Lcom/obs/services/model/ObsObject;

    invoke-direct {p1}, Lcom/obs/services/model/ObsObject;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentObject:Lcom/obs/services/model/ObsObject;

    .line 294
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/obs/services/model/ObsObject;->setBucketName(Ljava/lang/String;)V

    return-void

    .line 300
    :pswitch_46
    iput-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->insideCommonPrefixes:Z

    .line 301
    new-instance p1, Lcom/obs/services/model/ObsObject;

    invoke-direct {p1}, Lcom/obs/services/model/ObsObject;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListObjectsHandler;->currentExtendCommonPrefix:Lcom/obs/services/model/ObsObject;

    return-void

    :sswitch_data_50
    .sparse-switch
        -0x73d45e15 -> :sswitch_23
        -0x1df640c6 -> :sswitch_18
        0x4910293 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_46
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method
