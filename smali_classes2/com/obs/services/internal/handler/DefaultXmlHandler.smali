.class public abstract Lcom/obs/services/internal/handler/DefaultXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private currText:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/obs/services/internal/handler/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4

    .line 47
    iget-object p0, p0, Lcom/obs/services/internal/handler/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public abstract endElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 40
    iget-object p1, p0, Lcom/obs/services/internal/handler/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/obs/services/internal/handler/DefaultXmlHandler;->endElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, p2, p4}, Lcom/obs/services/internal/handler/DefaultXmlHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/handler/DefaultXmlHandler;->startElement(Ljava/lang/String;)V

    return-void
.end method
