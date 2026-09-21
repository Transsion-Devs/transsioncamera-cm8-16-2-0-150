.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListContentSummaryFsHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private dirContentSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;"
        }
    .end annotation
.end field

.field private dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

.field private dirSummary:Lcom/obs/services/model/fs/DirSummary;

.field private errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

.field private errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private subDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 494
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummaries:Ljava/util/List;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResults:Ljava/util/List;

    return-void
.end method

.method private fnSetInode(Ljava/lang/String;)V
    .registers 4

    .line 602
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    if-eqz v0, :cond_c

    .line 603
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/obs/services/model/fs/DirSummary;->setInode(J)V

    return-void

    .line 604
    :cond_c
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    if-eqz v0, :cond_18

    .line 605
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;->setInode(J)V

    return-void

    .line 606
    :cond_18
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    if-eqz p0, :cond_23

    .line 607
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/model/fs/DirContentSummary;->setInode(J)V

    :cond_23
    return-void
.end method

.method private fnSetKey(Ljava/lang/String;)V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    if-eqz v0, :cond_8

    .line 613
    invoke-virtual {v0, p1}, Lcom/obs/services/model/fs/DirContentSummary;->setKey(Ljava/lang/String;)V

    return-void

    .line 615
    :cond_8
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 566
    const-string v0, "BucketName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 567
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-void

    .line 568
    :cond_b
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 569
    invoke-direct {p0, p2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->fnSetKey(Ljava/lang/String;)V

    return-void

    .line 570
    :cond_17
    const-string v0, "Inode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 571
    invoke-direct {p0, p2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->fnSetInode(Ljava/lang/String;)V

    return-void

    .line 572
    :cond_23
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 573
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/fs/DirContentSummary;->setTruncated(Z)V

    return-void

    .line 574
    :cond_35
    const-string v0, "NextMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 575
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/DirContentSummary;->setNextMarker(Ljava/lang/String;)V

    return-void

    .line 576
    :cond_43
    const-string v0, "SubDir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 577
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->subDirs:Ljava/util/List;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    return-void

    .line 579
    :cond_56
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 580
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/DirSummary;->setName(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_64
    const-string v0, "DirCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 582
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setDirCount(J)V

    return-void

    .line 583
    :cond_76
    const-string v0, "FileCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 584
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setFileCount(J)V

    return-void

    .line 585
    :cond_88
    const-string v0, "FileSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 586
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setFileSize(J)V

    return-void

    .line 587
    :cond_9a
    const-string v0, "ErrContents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 588
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResults:Ljava/util/List;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 589
    :cond_aa
    const-string v0, "ErrorCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 590
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;->setErrorCode(Ljava/lang/String;)V

    return-void

    .line 591
    :cond_b8
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 592
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;->setMessage(Ljava/lang/String;)V

    return-void

    .line 593
    :cond_c6
    const-string v0, "StatusCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 594
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;->setStatusCode(Ljava/lang/String;)V

    return-void

    .line 595
    :cond_d4
    const-string p2, "Contents"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 596
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->subDirs:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/obs/services/model/fs/DirContentSummary;->setSubDir(Ljava/util/List;)V

    .line 597
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummaries:Ljava/util/List;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ea
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 543
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDirContentSummaries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method public getDirContentSummary()Lcom/obs/services/model/fs/DirContentSummary;
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    return-object p0
.end method

.method public getErrorResult()Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;
    .registers 1

    .line 519
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    return-object p0
.end method

.method public getErrorResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;"
        }
    .end annotation

    .line 535
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResults:Ljava/util/List;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDirContentSummaries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;)V"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummaries:Ljava/util/List;

    return-void
.end method

.method public setDirContentSummary(Lcom/obs/services/model/fs/DirContentSummary;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    return-void
.end method

.method public setErrorResult(Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    return-void
.end method

.method public setErrorResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;)V"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResults:Ljava/util/List;

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 4

    .line 552
    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 553
    new-instance p1, Lcom/obs/services/model/fs/DirContentSummary;

    invoke-direct {p1}, Lcom/obs/services/model/fs/DirContentSummary;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    .line 554
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->subDirs:Ljava/util/List;

    .line 555
    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    return-void

    .line 556
    :cond_1a
    const-string v0, "ErrContents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 557
    new-instance p1, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    invoke-direct {p1}, Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->errorResult:Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;

    .line 558
    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirContentSummary:Lcom/obs/services/model/fs/DirContentSummary;

    return-void

    .line 559
    :cond_2c
    const-string v0, "SubDir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 560
    new-instance p1, Lcom/obs/services/model/fs/DirSummary;

    invoke-direct {p1}, Lcom/obs/services/model/fs/DirSummary;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->dirSummary:Lcom/obs/services/model/fs/DirSummary;

    :cond_3b
    return-void
.end method
