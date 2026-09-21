.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPaymentHandler"
.end annotation


# instance fields
.field private payer:Ljava/lang/String;

.field private requestPaymentConfiguration:Lcom/obs/services/model/RequestPaymentConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1078
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1090
    const-string v0, "Payer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;->payer:Ljava/lang/String;

    return-void

    .line 1092
    :cond_b
    const-string p2, "RequestPaymentConfiguration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1093
    new-instance p1, Lcom/obs/services/model/RequestPaymentConfiguration;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;->payer:Ljava/lang/String;

    .line 1094
    invoke-static {p2}, Lcom/obs/services/model/RequestPaymentEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/RequestPaymentEnum;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/obs/services/model/RequestPaymentConfiguration;-><init>(Lcom/obs/services/model/RequestPaymentEnum;)V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;->requestPaymentConfiguration:Lcom/obs/services/model/RequestPaymentConfiguration;

    :cond_20
    return-void
.end method

.method public getRequestPaymentConfiguration()Lcom/obs/services/model/RequestPaymentConfiguration;
    .registers 1

    .line 1085
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;->requestPaymentConfiguration:Lcom/obs/services/model/RequestPaymentConfiguration;

    return-object p0
.end method
