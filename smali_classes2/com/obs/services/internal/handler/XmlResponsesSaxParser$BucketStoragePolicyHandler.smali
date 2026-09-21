.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketStoragePolicyHandler"
.end annotation


# instance fields
.field protected storagePolicyConfiguration:Lcom/obs/services/model/BucketStoragePolicyConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2479
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2495
    const-string v0, "DefaultStorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2496
    :cond_10
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;->storagePolicyConfiguration:Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    if-eqz p0, :cond_1b

    .line 2497
    invoke-static {p2}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    :cond_1b
    return-void
.end method

.method public getStoragePolicy()Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 1

    .line 2483
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;->storagePolicyConfiguration:Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2488
    const-string v0, "StoragePolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 2489
    :cond_12
    :goto_12
    new-instance p1, Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    invoke-direct {p1}, Lcom/obs/services/model/BucketStoragePolicyConfiguration;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketStoragePolicyHandler;->storagePolicyConfiguration:Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    return-void
.end method
