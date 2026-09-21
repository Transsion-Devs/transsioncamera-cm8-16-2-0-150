.class public Lcom/obs/services/model/select/JsonOutput;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
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
    .registers 3

    .line 48
    const-string v0, "JSON"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/obs/services/model/select/JsonOutput;->recordDelimiter:Ljava/lang/Character;

    if-eqz v0, :cond_19

    .line 50
    const-string v0, "RecordDelimiter"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/obs/services/model/select/JsonOutput;->recordDelimiter:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lcom/obs/services/model/select/XmlSerialization;->charToString(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_19
    return-void
.end method

.method public withRecordDelimiter(C)Lcom/obs/services/model/select/JsonOutput;
    .registers 2

    .line 36
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/JsonOutput;->recordDelimiter:Ljava/lang/Character;

    return-object p0
.end method
