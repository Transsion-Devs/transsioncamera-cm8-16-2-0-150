.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListPartsHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private initiator:Lcom/obs/services/model/Owner;

.field private isInInitiator:Z

.field private isTruncated:Z

.field private maxParts:I

.field private needDecode:Z

.field private nextPartNumberMarker:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private partNumberMarker:Ljava/lang/String;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1744
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->parts:Ljava/util/List;

    const/4 p1, 0x0

    .line 1739
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isTruncated:Z

    .line 1741
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isInInitiator:Z

    return-void
.end method


# virtual methods
.method public controlReturned(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 3

    .line 1801
    instance-of v0, p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;

    if-eqz v0, :cond_10

    .line 1802
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->parts:Ljava/util/List;

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->getMultipartPart()Lcom/obs/services/model/Multipart;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1803
    :cond_10
    instance-of v0, p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    if-eqz v0, :cond_29

    .line 1804
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isInInitiator:Z

    if-eqz v0, :cond_21

    .line 1805
    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->initiator:Lcom/obs/services/model/Owner;

    return-void

    .line 1807
    :cond_21
    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->owner:Lcom/obs/services/model/Owner;

    :cond_29
    return-void
.end method

.method public endBucket(Ljava/lang/String;)V
    .registers 2

    .line 1823
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public endEncodingType(Ljava/lang/String;)V
    .registers 3

    .line 1855
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->encodingType:Ljava/lang/String;

    .line 1856
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 1857
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->needDecode:Z

    :cond_d
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .registers 2

    .line 1851
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isTruncated:Z

    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .registers 2

    .line 1827
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public endMaxParts(Ljava/lang/String;)V
    .registers 2

    .line 1847
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->maxParts:I

    return-void
.end method

.method public endNextPartNumberMarker(Ljava/lang/String;)V
    .registers 2

    .line 1843
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->nextPartNumberMarker:Ljava/lang/String;

    return-void
.end method

.method public endPartNumberMarker(Ljava/lang/String;)V
    .registers 2

    .line 1839
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->partNumberMarker:Ljava/lang/String;

    return-void
.end method

.method public endStorageClass(Ljava/lang/String;)V
    .registers 2

    .line 1831
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public endUploadId(Ljava/lang/String;)V
    .registers 2

    .line 1835
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 1756
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 1788
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getInitiator()Lcom/obs/services/model/Owner;
    .registers 1

    .line 1768
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->initiator:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getMaxParts()I
    .registers 1

    .line 1792
    iget p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->maxParts:I

    return p0
.end method

.method public getMultiPartList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;"
        }
    .end annotation

    .line 1748
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->parts:Ljava/util/List;

    return-object p0
.end method

.method public getNextPartNumberMarker()Ljava/lang/String;
    .registers 1

    .line 1784
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->nextPartNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 2

    .line 1760
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->objectKey:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 1772
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getPartNumberMarker()Ljava/lang/String;
    .registers 1

    .line 1780
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->partNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 1

    .line 1776
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->storageClass:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 1

    .line 1764
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 1752
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isTruncated:Z

    return p0
.end method

.method public startInitiator()V
    .registers 3

    const/4 v0, 0x1

    .line 1813
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isInInitiator:Z

    .line 1814
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method

.method public startOwner()V
    .registers 3

    const/4 v0, 0x0

    .line 1818
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListPartsHandler;->isInInitiator:Z

    .line 1819
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method

.method public startPart()V
    .registers 3

    .line 1796
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method
