.class public Lcom/obs/services/model/select/CsvInput;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field private allowQuotedRecordDelimiter:Ljava/lang/Boolean;

.field private comments:Ljava/lang/Character;

.field private fieldDelimiter:Ljava/lang/Character;

.field private fileHeaderInfo:Ljava/lang/String;

.field private quoteCharacter:Ljava/lang/Character;

.field private quoteEscapeCharacter:Ljava/lang/Character;

.field private recordDelimiter:Ljava/lang/Character;


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

    .line 144
    const-string v0, "CSV"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->allowQuotedRecordDelimiter:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    .line 146
    const-string v0, "allowQuotedRecordDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->allowQuotedRecordDelimiter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 148
    :cond_19
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->comments:Ljava/lang/Character;

    if-eqz v0, :cond_2c

    .line 149
    const-string v0, "Comments"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->comments:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 151
    :cond_2c
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->fieldDelimiter:Ljava/lang/Character;

    if-eqz v0, :cond_3f

    .line 152
    const-string v0, "FieldDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->fieldDelimiter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 154
    :cond_3f
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->recordDelimiter:Ljava/lang/Character;

    if-eqz v0, :cond_52

    .line 155
    const-string v0, "RecordDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->recordDelimiter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 157
    :cond_52
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->fileHeaderInfo:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 158
    const-string v0, "FileHeaderInfo"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->fileHeaderInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 160
    :cond_61
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->quoteCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_74

    .line 161
    const-string v0, "QuoteCharacter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/CsvInput;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {p0, v1}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 163
    :cond_74
    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->quoteEscapeCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_87

    .line 164
    const-string v0, "QuoteEscapeCharacter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/obs/services/model/select/CsvInput;->quoteEscapeCharacter:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_87
    return-void
.end method

.method public withAllowQuotedRecordDelimiter(Z)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->allowQuotedRecordDelimiter:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withComments(C)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 57
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->comments:Ljava/lang/Character;

    return-object p0
.end method

.method public withFieldDelimiter(C)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 72
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->fieldDelimiter:Ljava/lang/Character;

    return-object p0
.end method

.method public withFileHeaderInfo(Lcom/obs/services/model/select/FileHeaderInfo;)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 102
    invoke-virtual {p1}, Lcom/obs/services/model/select/FileHeaderInfo;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->fileHeaderInfo:Ljava/lang/String;

    return-object p0
.end method

.method public withQuoteCharacter(C)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 117
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->quoteCharacter:Ljava/lang/Character;

    return-object p0
.end method

.method public withQuoteEscapeCharacter(C)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 132
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->quoteEscapeCharacter:Ljava/lang/Character;

    return-object p0
.end method

.method public withRecordDelimiter(C)Lcom/obs/services/model/select/CsvInput;
    .registers 2

    .line 87
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/CsvInput;->recordDelimiter:Ljava/lang/Character;

    return-object p0
.end method
