.class public Lcom/obs/services/model/select/CsvOutput;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field fieldDelimiter:Ljava/lang/Character;

.field quoteCharacter:Ljava/lang/Character;

.field quoteEscapeCharacter:Ljava/lang/Character;

.field quoteFields:Ljava/lang/String;

.field recordDelimiter:Ljava/lang/Character;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/select/XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 4

    .line 112
    const-string v0, "CSV"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->fieldDelimiter:Ljava/lang/Character;

    if-eqz v0, :cond_19

    .line 114
    const-string v0, "FieldDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvOutput;->fieldDelimiter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 116
    :cond_19
    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->recordDelimiter:Ljava/lang/Character;

    if-eqz v0, :cond_2c

    .line 117
    const-string v0, "RecordDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvOutput;->recordDelimiter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 119
    :cond_2c
    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->quoteCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_3f

    .line 120
    const-string v0, "QuoteCharacter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvOutput;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 122
    :cond_3f
    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->quoteFields:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 123
    const-string v0, "QuoteFields"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvOutput;->quoteFields:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 125
    :cond_4e
    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->quoteEscapeCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_61

    .line 126
    const-string v0, "QuoteEscapeCharacter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/obs/services/model/select/CsvOutput;->quoteEscapeCharacter:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_61
    return-void
.end method

.method public withFieldDelimiter(C)Lcom/obs/services/model/select/CsvOutput;
    .registers 2

    .line 40
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvOutput;->fieldDelimiter:Ljava/lang/Character;

    return-object p0
.end method

.method public withQuoteCharacter(C)Lcom/obs/services/model/select/CsvOutput;
    .registers 2

    .line 70
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvOutput;->quoteCharacter:Ljava/lang/Character;

    return-object p0
.end method

.method public withQuoteEscapeCharacter(C)Lcom/obs/services/model/select/CsvOutput;
    .registers 2

    .line 85
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvOutput;->quoteEscapeCharacter:Ljava/lang/Character;

    return-object p0
.end method

.method public withQuoteFields(Lcom/obs/services/model/select/QuoteFields;)Lcom/obs/services/model/select/CsvOutput;
    .registers 2

    .line 100
    invoke-virtual {p1}, Lcom/obs/services/model/select/QuoteFields;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvOutput;->quoteFields:Ljava/lang/String;

    return-object p0
.end method

.method public withRecordDelimiter(C)Lcom/obs/services/model/select/CsvOutput;
    .registers 2

    .line 55
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvOutput;->recordDelimiter:Ljava/lang/Character;

    return-object p0
.end method
