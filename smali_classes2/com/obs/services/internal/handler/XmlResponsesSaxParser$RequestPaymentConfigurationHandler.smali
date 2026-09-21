.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPaymentConfigurationHandler"
.end annotation


# instance fields
.field private payer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1011
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    const/4 v0, 0x0

    .line 1012
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1020
    const-string v0, "Payer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1021
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public isRequesterPays()Z
    .registers 2

    .line 1015
    const-string v0, "Requester"

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
