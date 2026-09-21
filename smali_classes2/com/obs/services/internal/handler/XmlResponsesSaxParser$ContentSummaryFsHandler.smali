.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentSummaryFsHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentSummary:Lcom/obs/services/model/fs/DirSummary;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 620
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 651
    const-string v0, "BucketName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 652
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-void

    .line 653
    :cond_b
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 654
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/fs/DirSummary;->setName(Ljava/lang/String;)V

    return-void

    .line 655
    :cond_19
    const-string v0, "DirCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 656
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setDirCount(J)V

    return-void

    .line 657
    :cond_2b
    const-string v0, "FileCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 658
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setFileCount(J)V

    return-void

    .line 659
    :cond_3d
    const-string v0, "FileSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 660
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setFileSize(J)V

    return-void

    .line 661
    :cond_4f
    const-string v0, "Inode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 662
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/fs/DirSummary;->setInode(J)V

    :cond_60
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getContentSummary()Lcom/obs/services/model/fs/DirSummary;
    .registers 1

    .line 635
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContentSummary(Lcom/obs/services/model/fs/DirSummary;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 644
    const-string v0, "GetContentSummaryResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 645
    new-instance p1, Lcom/obs/services/model/fs/DirSummary;

    invoke-direct {p1}, Lcom/obs/services/model/fs/DirSummary;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    :cond_f
    return-void
.end method
