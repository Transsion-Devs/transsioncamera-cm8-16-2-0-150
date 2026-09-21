.class public Lcom/obs/services/model/select/OrcInput;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/select/XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 2

    .line 31
    const-string p0, "ORC"

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    return-void
.end method
