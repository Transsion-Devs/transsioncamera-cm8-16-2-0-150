.class public Lcom/obs/services/model/select/JsonInput;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field private type:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/obs/services/model/select/JsonInput;->type:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 50
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/model/select/JsonInput;->type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_15
    return-void
.end method

.method public withType(Lcom/obs/services/model/select/JsonType;)Lcom/obs/services/model/select/JsonInput;
    .registers 2

    .line 36
    invoke-virtual {p1}, Lcom/obs/services/model/select/JsonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/JsonInput;->type:Ljava/lang/String;

    return-object p0
.end method
