.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListMultipartUploadsHandler"
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

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private needDecode:Z

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;

.field private final uploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1513
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1482
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploads:Ljava/util/List;

    .line 1484
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->commonPrefixes:Ljava/util/List;

    .line 1486
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->finalCommonPrefixes:Ljava/util/List;

    const/4 p1, 0x0

    .line 1506
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->isTruncated:Z

    return-void
.end method


# virtual methods
.method public controlReturned(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 3

    .line 1581
    instance-of v0, p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;

    if-eqz v0, :cond_f

    .line 1582
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploads:Ljava/util/List;

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->getMultipartUpload()Lcom/obs/services/model/MultipartUpload;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public endBucket(Ljava/lang/String;)V
    .registers 2

    .line 1591
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public endCommonPrefixes()V
    .registers 2

    const/4 v0, 0x0

    .line 1633
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->insideCommonPrefixes:Z

    return-void
.end method

.method public endDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 1587
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public endEncodingType(Ljava/lang/String;)V
    .registers 3

    .line 1637
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->encodingType:Ljava/lang/String;

    .line 1638
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 1639
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    :cond_d
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .registers 2

    .line 1621
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->isTruncated:Z

    return-void
.end method

.method public endKeyMarker(Ljava/lang/String;)V
    .registers 2

    .line 1595
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public endMaxUploads(Ljava/lang/String;)V
    .registers 3

    .line 1612
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->maxUploads:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1614
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1615
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    const-string v0, "Response xml is not well-format"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1b
    return-void
.end method

.method public endNextKeyMarker(Ljava/lang/String;)V
    .registers 2

    .line 1603
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->nextKeyMarker:Ljava/lang/String;

    return-void
.end method

.method public endNextUploadIdMarker(Ljava/lang/String;)V
    .registers 2

    .line 1607
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->nextUploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public endPrefix(Ljava/lang/String;)V
    .registers 3

    .line 1625
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_a

    .line 1626
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1628
    :cond_a
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->prefix:Ljava/lang/String;

    return-void
.end method

.method public endUploadIdMarker(Ljava/lang/String;)V
    .registers 2

    .line 1599
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 1525
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->bucketName:Ljava/lang/String;

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

    .line 1553
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1554
    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->finalCommonPrefixes:Ljava/util/List;

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v1, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1556
    :cond_1e
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->finalCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 2

    .line 1560
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->delimiter:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 1568
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .registers 2

    .line 1533
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->keyMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxUploads()I
    .registers 1

    .line 1549
    iget p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->maxUploads:I

    return p0
.end method

.method public getMultipartUploadList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/MultipartUpload;

    .line 1518
    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/obs/services/model/MultipartUpload;->setBucketName(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v1}, Lcom/obs/services/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/MultipartUpload;->setObjectKey(Ljava/lang/String;)V

    goto :goto_6

    .line 1521
    :cond_25
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploads:Ljava/util/List;

    return-object p0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .registers 2

    .line 1541
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->nextKeyMarker:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .registers 1

    .line 1545
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->nextUploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 1564
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->prefix:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .registers 1

    .line 1537
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->uploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 1529
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->isTruncated:Z

    return p0
.end method

.method public startCommonPrefixes()V
    .registers 2

    const/4 v0, 0x1

    .line 1576
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListMultipartUploadsHandler;->insideCommonPrefixes:Z

    return-void
.end method

.method public startUpload()V
    .registers 3

    .line 1572
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method
