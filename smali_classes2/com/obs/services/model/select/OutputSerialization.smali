.class public Lcom/obs/services/model/select/OutputSerialization;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field private output:Lcom/obs/services/model/select/XmlSerialization;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/obs/services/model/select/XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 3

    .line 67
    const-string v0, "OutputSerialization"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/select/OutputSerialization;->output:Lcom/obs/services/model/select/XmlSerialization;

    if-eqz p0, :cond_d

    .line 69
    invoke-virtual {p0, p1}, Lcom/obs/services/model/select/XmlSerialization;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    :cond_d
    return-void
.end method

.method public withArrow()Lcom/obs/services/model/select/OutputSerialization;
    .registers 2

    .line 55
    new-instance v0, Lcom/obs/services/model/select/ArrowOutput;

    invoke-direct {v0}, Lcom/obs/services/model/select/ArrowOutput;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/select/OutputSerialization;->output:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method

.method public withCsv(Lcom/obs/services/model/select/CsvOutput;)Lcom/obs/services/model/select/OutputSerialization;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/obs/services/model/select/OutputSerialization;->output:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method

.method public withJson(Lcom/obs/services/model/select/JsonOutput;)Lcom/obs/services/model/select/OutputSerialization;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/select/OutputSerialization;->output:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method
