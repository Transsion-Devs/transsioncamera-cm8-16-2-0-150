.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketVersioningHandler"
.end annotation


# instance fields
.field private status:Ljava/lang/String;

.field private versioningStatus:Lcom/obs/services/model/BucketVersioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1026
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1038
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1039
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;->status:Ljava/lang/String;

    return-void

    .line 1040
    :cond_b
    const-string p2, "VersioningConfiguration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1041
    new-instance p1, Lcom/obs/services/model/BucketVersioningConfiguration;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;->status:Ljava/lang/String;

    .line 1042
    invoke-static {p2}, Lcom/obs/services/model/VersioningStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/obs/services/model/BucketVersioningConfiguration;-><init>(Lcom/obs/services/model/VersioningStatusEnum;)V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;->versioningStatus:Lcom/obs/services/model/BucketVersioningConfiguration;

    :cond_20
    return-void
.end method

.method public getVersioningStatus()Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 1

    .line 1033
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketVersioningHandler;->versioningStatus:Lcom/obs/services/model/BucketVersioningConfiguration;

    return-object p0
.end method
