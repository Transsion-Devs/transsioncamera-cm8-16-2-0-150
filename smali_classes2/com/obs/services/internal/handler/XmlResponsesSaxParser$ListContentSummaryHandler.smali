.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListContentSummaryHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

.field private currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

.field private final folderContentSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;"
        }
    .end annotation
.end field

.field private lastFolder:Ljava/lang/String;

.field private listingTruncated:Z

.field private nextMarker:Ljava/lang/String;

.field private requestDelimiter:Ljava/lang/String;

.field private requestMarker:Ljava/lang/String;

.field private requestMaxKeys:I

.field private requestPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 388
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->folderContentSummaries:Ljava/util/List;

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestMaxKeys:I

    .line 405
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->listingTruncated:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 459
    const-string v0, "BucketName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 460
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->bucketName:Ljava/lang/String;

    return-void

    .line 461
    :cond_b
    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 462
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestPrefix:Ljava/lang/String;

    return-void

    .line 463
    :cond_16
    const-string v0, "Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 464
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestMarker:Ljava/lang/String;

    return-void

    .line 465
    :cond_21
    const-string v0, "NextMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 466
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->nextMarker:Ljava/lang/String;

    return-void

    .line 467
    :cond_2c
    const-string v0, "MaxKeys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 468
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestMaxKeys:I

    return-void

    .line 469
    :cond_3b
    const-string v0, "Delimiter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 470
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestDelimiter:Ljava/lang/String;

    return-void

    .line 471
    :cond_46
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 472
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->listingTruncated:Z

    return-void

    .line 473
    :cond_55
    const-string v0, "Directory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 474
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

    invoke-virtual {p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary;->setDir(Ljava/lang/String;)V

    .line 475
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->lastFolder:Ljava/lang/String;

    return-void

    .line 476
    :cond_65
    const-string v0, "DirHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 477
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary;->setDirHeight(J)V

    return-void

    .line 478
    :cond_77
    const-string v0, "SummaryHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 479
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->setSummaryHeight(J)V

    return-void

    .line 480
    :cond_89
    const-string v0, "DirCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 481
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->setDirCount(J)V

    return-void

    .line 482
    :cond_9b
    const-string v0, "FileCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 483
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->setFileCount(J)V

    return-void

    .line 484
    :cond_ad
    const-string v0, "FileSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 485
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->setFileSize(J)V

    return-void

    .line 486
    :cond_bf
    const-string p2, "LayerSummary"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 487
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

    invoke-virtual {p1}, Lcom/obs/services/model/fs/FolderContentSummary;->getLayerSummaries()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 488
    :cond_d3
    const-string p2, "Contents"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 489
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->folderContentSummaries:Ljava/util/List;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e2
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderContentSummaries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->folderContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method public getMarkerForNextListing()Ljava/lang/String;
    .registers 2

    .line 445
    iget-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->listingTruncated:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->nextMarker:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->lastFolder:Ljava/lang/String;

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestDelimiter()Ljava/lang/String;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestDelimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestMarker()Ljava/lang/String;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestMaxKeys()I
    .registers 1

    .line 437
    iget p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestMaxKeys:I

    return p0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .registers 1

    .line 425
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->requestPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public isListingTruncated()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->listingTruncated:Z

    return p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 450
    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 451
    new-instance p1, Lcom/obs/services/model/fs/FolderContentSummary;

    invoke-direct {p1}, Lcom/obs/services/model/fs/FolderContentSummary;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentFolderContentSummary:Lcom/obs/services/model/fs/FolderContentSummary;

    return-void

    .line 452
    :cond_10
    const-string v0, "LayerSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 453
    new-instance p1, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    invoke-direct {p1}, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->currentLayerSummary:Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;

    :cond_1f
    return-void
.end method
