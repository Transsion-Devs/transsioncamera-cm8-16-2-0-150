.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketQuotaHandler"
.end annotation


# instance fields
.field protected quota:Lcom/obs/services/model/BucketQuota;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2425
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2441
    const-string v0, "StorageQuota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2442
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;->quota:Lcom/obs/services/model/BucketQuota;

    if-eqz p0, :cond_13

    .line 2443
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/BucketQuota;->setBucketQuota(J)V

    :cond_13
    return-void
.end method

.method public getQuota()Lcom/obs/services/model/BucketQuota;
    .registers 1

    .line 2429
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;->quota:Lcom/obs/services/model/BucketQuota;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2434
    const-string v0, "Quota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2435
    new-instance p1, Lcom/obs/services/model/BucketQuota;

    invoke-direct {p1}, Lcom/obs/services/model/BucketQuota;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;->quota:Lcom/obs/services/model/BucketQuota;

    :cond_f
    return-void
.end method
