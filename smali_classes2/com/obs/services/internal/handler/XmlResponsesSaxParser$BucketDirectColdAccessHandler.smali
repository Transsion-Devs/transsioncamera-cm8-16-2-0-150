.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketDirectColdAccessHandler"
.end annotation


# instance fields
.field private access:Lcom/obs/services/model/BucketDirectColdAccess;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2654
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2655
    new-instance v0, Lcom/obs/services/model/BucketDirectColdAccess;

    invoke-direct {v0}, Lcom/obs/services/model/BucketDirectColdAccess;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;->access:Lcom/obs/services/model/BucketDirectColdAccess;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2663
    const-string v0, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2664
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;->access:Lcom/obs/services/model/BucketDirectColdAccess;

    invoke-static {p2}, Lcom/obs/services/model/RuleStatusEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RuleStatusEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/BucketDirectColdAccess;->setStatus(Lcom/obs/services/model/RuleStatusEnum;)V

    :cond_11
    return-void
.end method

.method public getBucketDirectColdAccess()Lcom/obs/services/model/BucketDirectColdAccess;
    .registers 1

    .line 2658
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;->access:Lcom/obs/services/model/BucketDirectColdAccess;

    return-object p0
.end method
