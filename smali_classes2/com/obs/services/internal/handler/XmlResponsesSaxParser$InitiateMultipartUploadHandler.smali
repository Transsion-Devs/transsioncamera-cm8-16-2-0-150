.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitiateMultipartUploadHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private needDecode:Z

.field private objectKey:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1377
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public endBucket(Ljava/lang/String;)V
    .registers 2

    .line 1390
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public endEncodingType(Ljava/lang/String;)V
    .registers 3

    .line 1398
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->encodingType:Ljava/lang/String;

    .line 1399
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 1400
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->needDecode:Z

    :cond_d
    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .registers 2

    .line 1394
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public endUploadId(Ljava/lang/String;)V
    .registers 2

    .line 1386
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 1405
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getInitiateMultipartUploadResult()Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 4

    .line 1381
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->objectKey:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->needDecode:Z

    invoke-static {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->objectKey:Ljava/lang/String;

    .line 1382
    new-instance v1, Lcom/obs/services/model/InitiateMultipartUploadResult;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->bucketName:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->uploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0}, Lcom/obs/services/model/InitiateMultipartUploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
