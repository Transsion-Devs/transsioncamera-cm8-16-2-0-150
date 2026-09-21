.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultipartUploadHandler"
.end annotation


# instance fields
.field private initiatedDate:Ljava/util/Date;

.field private initiator:Lcom/obs/services/model/Owner;

.field private isInInitiator:Z

.field private objectKey:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    const/4 p1, 0x0

    .line 1423
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->isInInitiator:Z

    return-void
.end method


# virtual methods
.method public controlReturned(Lcom/obs/services/internal/handler/SimpleHandler;)V
    .registers 3

    .line 1466
    instance-of v0, p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    if-eqz v0, :cond_19

    .line 1467
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->isInInitiator:Z

    if-eqz v0, :cond_11

    .line 1468
    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->initiator:Lcom/obs/services/model/Owner;

    return-void

    .line 1470
    :cond_11
    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->owner:Lcom/obs/services/model/Owner;

    :cond_19
    return-void
.end method

.method public endInitiated(Ljava/lang/String;)V
    .registers 3

    .line 1448
    :try_start_0
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->initiatedDate:Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1450
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    const-string v0, "date parse failed."

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .registers 2

    .line 1439
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public endStorageClass(Ljava/lang/String;)V
    .registers 2

    .line 1443
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public endUpload(Ljava/lang/String;)V
    .registers 2

    .line 1476
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/SimpleHandler;->returnControlToParentHandler()V

    return-void
.end method

.method public endUploadId(Ljava/lang/String;)V
    .registers 2

    .line 1435
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public getMultipartUpload()Lcom/obs/services/model/MultipartUpload;
    .registers 8

    .line 1430
    new-instance v0, Lcom/obs/services/model/MultipartUpload;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->uploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->objectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->initiatedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->storageClass:Ljava/lang/String;

    .line 1431
    invoke-static {v4}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v4

    iget-object v5, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->owner:Lcom/obs/services/model/Owner;

    iget-object v6, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->initiator:Lcom/obs/services/model/Owner;

    invoke-direct/range {v0 .. v6}, Lcom/obs/services/model/MultipartUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/obs/services/model/StorageClassEnum;Lcom/obs/services/model/Owner;Lcom/obs/services/model/Owner;)V

    return-object v0
.end method

.method public startInitiator()V
    .registers 3

    const/4 v0, 0x1

    .line 1460
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->isInInitiator:Z

    .line 1461
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method

.method public startOwner()V
    .registers 3

    const/4 v0, 0x0

    .line 1455
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$MultipartUploadHandler;->isInInitiator:Z

    .line 1456
    new-instance v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lcom/obs/services/internal/handler/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/handler/SimpleHandler;->transferControl(Lcom/obs/services/internal/handler/SimpleHandler;)V

    return-void
.end method
