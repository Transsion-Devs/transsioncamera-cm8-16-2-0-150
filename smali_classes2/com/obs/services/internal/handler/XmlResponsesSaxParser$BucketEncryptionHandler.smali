.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEncryptionHandler"
.end annotation


# instance fields
.field protected encryption:Lcom/obs/services/model/BucketEncryption;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2449
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2465
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->encryption:Lcom/obs/services/model/BucketEncryption;

    if-nez v0, :cond_18

    .line 2466
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 2467
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    const-string p1, "Response xml is not well-formt"

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    return-void

    .line 2471
    :cond_18
    const-string v0, "SSEAlgorithm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2472
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->encryption:Lcom/obs/services/model/BucketEncryption;

    const-string p1, "aws:"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/model/SSEAlgorithmEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/BucketEncryption;->setSseAlgorithm(Lcom/obs/services/model/SSEAlgorithmEnum;)V

    return-void

    .line 2473
    :cond_32
    const-string v0, "KMSMasterKeyID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 2474
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->encryption:Lcom/obs/services/model/BucketEncryption;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/BucketEncryption;->setKmsKeyId(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public getEncryption()Lcom/obs/services/model/BucketEncryption;
    .registers 1

    .line 2453
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->encryption:Lcom/obs/services/model/BucketEncryption;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2458
    const-string v0, "ApplyServerSideEncryptionByDefault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2459
    new-instance p1, Lcom/obs/services/model/BucketEncryption;

    invoke-direct {p1}, Lcom/obs/services/model/BucketEncryption;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->encryption:Lcom/obs/services/model/BucketEncryption;

    :cond_f
    return-void
.end method
