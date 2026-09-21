.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteMultipartUploadHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private needDecode:Z

.field private objectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1877
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public endBucket(Ljava/lang/String;)V
    .registers 2

    .line 1885
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public endETag(Ljava/lang/String;)V
    .registers 2

    .line 1893
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->etag:Ljava/lang/String;

    return-void
.end method

.method public endEncodingType(Ljava/lang/String;)V
    .registers 3

    .line 1913
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->encodingType:Ljava/lang/String;

    .line 1914
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 1915
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->needDecode:Z

    :cond_d
    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .registers 2

    .line 1889
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public endLocation(Ljava/lang/String;)V
    .registers 2

    .line 1881
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->location:Ljava/lang/String;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 1901
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 1920
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 1909
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 1897
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 2

    .line 1905
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->objectKey:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->needDecode:Z

    invoke-static {v0, p0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
