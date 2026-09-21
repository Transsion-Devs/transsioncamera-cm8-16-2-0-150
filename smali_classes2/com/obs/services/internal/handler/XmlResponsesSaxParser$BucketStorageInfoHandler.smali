.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketStorageInfoHandler"
.end annotation


# instance fields
.field private storageInfo:Lcom/obs/services/model/BucketStorageInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2503
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2519
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    if-nez v0, :cond_18

    .line 2520
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p0

    if-eqz p0, :cond_137

    .line 2521
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    const-string p1, "Response xml is not well-formt"

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    return-void

    .line 2526
    :cond_18
    const-string v0, "Size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2527
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setSize(J)V

    return-void

    .line 2528
    :cond_2a
    const-string v0, "ObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2529
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setObjectNumber(J)V

    return-void

    .line 2530
    :cond_3c
    const-string v0, "StandardSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2531
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setStandardSize(J)V

    return-void

    .line 2532
    :cond_4e
    const-string v0, "StandardObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2533
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setStandardObjectNumber(J)V

    return-void

    .line 2534
    :cond_60
    const-string v0, "WarmSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2535
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setWarmSize(J)V

    return-void

    .line 2536
    :cond_72
    const-string v0, "WarmObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2537
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setWarmObjectNumber(J)V

    return-void

    .line 2538
    :cond_84
    const-string v0, "ColdSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2539
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setColdSize(J)V

    return-void

    .line 2540
    :cond_96
    const-string v0, "ColdObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 2541
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setColdObjectNumber(J)V

    return-void

    .line 2542
    :cond_a8
    const-string v0, "DeepArchiveSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2543
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setDeepArchiveSize(J)V

    return-void

    .line 2544
    :cond_ba
    const-string v0, "DeepArchiveObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 2545
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setDeepArchiveObjectNumber(J)V

    return-void

    .line 2546
    :cond_cc
    const-string v0, "HighPerformanceSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 2547
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setHighPerformanceSize(J)V

    return-void

    .line 2548
    :cond_de
    const-string v0, "HighPerformanceObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2549
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setHighPerformanceObjectNumber(J)V

    return-void

    .line 2550
    :cond_f0
    const-string v0, "Standard_IASize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 2551
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setStandard_IASize(J)V

    return-void

    .line 2552
    :cond_102
    const-string v0, "Standard_IAObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 2553
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setStandard_IAObjectNumber(J)V

    return-void

    .line 2554
    :cond_114
    const-string v0, "GlacierSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 2555
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setGlacierSize(J)V

    return-void

    .line 2556
    :cond_126
    const-string v0, "GlacierObjectNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_137

    .line 2557
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketStorageInfo;->setGlacierObjectNumber(J)V

    :cond_137
    return-void
.end method

.method public getStorageInfo()Lcom/obs/services/model/BucketStorageInfo;
    .registers 1

    .line 2507
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2512
    const-string v0, "GetBucketStorageInfoResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2513
    new-instance p1, Lcom/obs/services/model/BucketStorageInfo;

    invoke-direct {p1}, Lcom/obs/services/model/BucketStorageInfo;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStorageInfoHandler;->storageInfo:Lcom/obs/services/model/BucketStorageInfo;

    :cond_f
    return-void
.end method
