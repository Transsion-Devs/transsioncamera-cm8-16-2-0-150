.class public Lcom/obs/services/model/select/InputSerialization;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field private compressionType:Lcom/obs/services/model/select/CompressionType;

.field private input:Lcom/obs/services/model/select/XmlSerialization;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/select/XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 4

    .line 99
    const-string v0, "InputSerialization"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/obs/services/model/select/InputSerialization;->compressionType:Lcom/obs/services/model/select/CompressionType;

    if-eqz v0, :cond_19

    .line 101
    const-string v0, "CompressionType"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/InputSerialization;->compressionType:Lcom/obs/services/model/select/CompressionType;

    invoke-virtual {v1}, Lcom/obs/services/model/select/CompressionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 103
    :cond_19
    iget-object p0, p0, Lcom/obs/services/model/select/InputSerialization;->input:Lcom/obs/services/model/select/XmlSerialization;

    if-eqz p0, :cond_20

    .line 104
    invoke-virtual {p0, p1}, Lcom/obs/services/model/select/XmlSerialization;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    :cond_20
    return-void
.end method

.method public withCompressionType(Lcom/obs/services/model/select/CompressionType;)Lcom/obs/services/model/select/InputSerialization;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/select/InputSerialization;->compressionType:Lcom/obs/services/model/select/CompressionType;

    return-object p0
.end method

.method public withCsv(Lcom/obs/services/model/select/CsvInput;)Lcom/obs/services/model/select/InputSerialization;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/select/InputSerialization;->input:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method

.method public withJson(Lcom/obs/services/model/select/JsonInput;)Lcom/obs/services/model/select/InputSerialization;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/obs/services/model/select/InputSerialization;->input:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method

.method public withOrc(Lcom/obs/services/model/select/OrcInput;)Lcom/obs/services/model/select/InputSerialization;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/obs/services/model/select/InputSerialization;->input:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method

.method public withParquet(Lcom/obs/services/model/select/ParquetInput;)Lcom/obs/services/model/select/InputSerialization;
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/obs/services/model/select/InputSerialization;->input:Lcom/obs/services/model/select/XmlSerialization;

    return-object p0
.end method
