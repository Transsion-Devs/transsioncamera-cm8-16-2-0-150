.class public abstract Lcom/jamesmurty/utils/BaseXMLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static failIfExternalEntityParsingCannotBeConfigured:Z = true


# instance fields
.field private xmlDocument:Lorg/w3c/dom/Document;

.field private xmlNode:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 92
    iput-object p1, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    .line 93
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    .line 109
    iput-object p1, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 110
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_12

    .line 111
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    goto :goto_18

    .line 113
    :cond_12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    :goto_18
    if-eqz p2, :cond_1d

    .line 116
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1d
    return-void
.end method

.method protected static createDocumentImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/w3c/dom/Document;
    .registers 5

    .line 216
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 218
    invoke-static {v0, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->enableOrDisableExternalEntityParsing(Ljavax/xml/parsers/DocumentBuilderFactory;Z)V

    .line 219
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 220
    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    if-eqz p1, :cond_1f

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1f

    .line 223
    invoke-interface {p2, p1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_23

    .line 225
    :cond_1f
    invoke-interface {p2, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 227
    :goto_23
    invoke-interface {p2, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method protected static enableOrDisableExternalEntityParsing(Ljavax/xml/parsers/DocumentBuilderFactory;Z)V
    .registers 7

    .line 142
    const-string v0, "http://xerces.apache.org/xerces-j/features.html#external-general-entities"

    const-string v1, "http://xerces.apache.org/xerces2-j/features.html#external-general-entities"

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    if-ge v2, v3, :cond_18

    .line 151
    aget-object v4, v0, v2

    .line 153
    :try_start_11
    invoke-virtual {p0, v4, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 159
    :cond_18
    sget-boolean v0, Lcom/jamesmurty/utils/BaseXMLBuilder;->failIfExternalEntityParsingCannotBeConfigured:Z

    if-nez v0, :cond_52

    .line 167
    :goto_1c
    const-string v0, "http://xerces.apache.org/xerces-j/features.html#external-parameter-entities"

    const-string v2, "http://xerces.apache.org/xerces2-j/features.html#external-parameter-entities"

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    filled-new-array {v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_26
    if-ge v1, v3, :cond_31

    .line 176
    aget-object v2, v0, v1

    .line 178
    :try_start_2a
    invoke-virtual {p0, v2, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 184
    :cond_31
    sget-boolean p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->failIfExternalEntityParsingCannotBeConfigured:Z

    if-nez p0, :cond_36

    :goto_35
    return-void

    .line 185
    :cond_36
    new-instance p0, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;

    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set \'external-parameter-entities\' feature to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 160
    :cond_52
    new-instance p0, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;

    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set \'external-general-entities\' feature to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method protected static parseDocumentImpl(Lorg/xml/sax/InputSource;ZZ)Lorg/w3c/dom/Document;
    .registers 4

    .line 255
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 257
    invoke-static {v0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->enableOrDisableExternalEntityParsing(Ljavax/xml/parsers/DocumentBuilderFactory;Z)V

    .line 258
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public asString()Ljava/lang/String;
    .registers 4

    .line 1405
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1406
    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 3

    .line 1368
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1369
    invoke-virtual {p0, v0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->toWriter(Ljava/io/Writer;Ljava/util/Properties;)V

    .line 1370
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected assertElementContainsNoOrWhitespaceOnlyTextNodes(Lorg/w3c/dom/Node;)V
    .registers 7

    .line 1268
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 1269
    :goto_5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1270
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2d

    .line 1271
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1273
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    goto :goto_31

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_34

    return-void

    .line 1281
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add sub-element to element <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> that contains a Text node that isn\'t purely whitespace: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected attributeImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 809
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_c

    .line 814
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 810
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add an attribute to non-Element underlying node: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected buildDocumentNamespaceContext()Lcom/jamesmurty/utils/NamespaceContextImpl;
    .registers 2

    .line 1433
    new-instance v0, Lcom/jamesmurty/utils/NamespaceContextImpl;

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/NamespaceContextImpl;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public abstract c(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract cdata([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected cdataImpl(Ljava/lang/String;)V
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 849
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p0

    .line 848
    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected cdataImpl([B)V
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 861
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    .line 862
    invoke-static {p1}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    .line 861
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p0

    .line 860
    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public abstract cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract comment(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected commentImpl(Ljava/lang/String;)V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public abstract d(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract d([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract data(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract data([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract document()Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract e(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract elem(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract element(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public elementAsString()Ljava/lang/String;
    .registers 4

    .line 1421
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1422
    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementAsString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public elementAsString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 4

    .line 1390
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    .line 1391
    invoke-virtual {p0, v1, v0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->toWriter(ZLjava/io/Writer;Ljava/util/Properties;)V

    .line 1392
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected elementBeforeImpl(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4

    .line 767
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getPrefixFromQualifiedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method protected elementBeforeImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 788
    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->assertElementContainsNoOrWhitespaceOnlyTextNodes(Lorg/w3c/dom/Node;)V

    if-nez p2, :cond_14

    .line 791
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_1c

    .line 792
    :cond_14
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 795
    :goto_1c
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method protected elementImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->assertElementContainsNoOrWhitespaceOnlyTextNodes(Lorg/w3c/dom/Node;)V

    if-nez p2, :cond_10

    .line 545
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    .line 547
    :cond_10
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 326
    instance-of v1, p1, Lcom/jamesmurty/utils/BaseXMLBuilder;

    if-eqz v1, :cond_23

    .line 327
    check-cast p1, Lcom/jamesmurty/utils/BaseXMLBuilder;

    .line 328
    iget-object v1, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    .line 329
    invoke-virtual {p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 330
    invoke-virtual {p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    return v0
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlDocument:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 341
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_9

    .line 342
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPrefixFromQualifiedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 p0, 0x3a

    .line 1437
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_e

    const/4 v0, 0x0

    .line 1439
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected importXMLBuilderImpl(Lcom/jamesmurty/utils/BaseXMLBuilder;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->assertElementContainsNoOrWhitespaceOnlyTextNodes(Lorg/w3c/dom/Node;)V

    .line 314
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const/4 v1, 0x1

    .line 314
    invoke-interface {v0, p1, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public abstract insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected insertInstructionImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 896
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 897
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    .line 896
    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public abstract inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected instructionImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 884
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected lookupNamespaceURIImpl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 523
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getPrefixFromQualifiedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected namespaceImpl(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 943
    invoke-virtual {p0, v0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->namespaceImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected namespaceImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 921
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_33

    .line 926
    const-string v0, "http://www.w3.org/2000/xmlns/"

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 927
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 930
    :cond_29
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string p1, "xmlns"

    invoke-interface {p0, v0, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 922
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add an attribute to non-Element underlying node: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ns(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract r(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract ref(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract reference(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected referenceImpl(Ljava/lang/String;)V
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public abstract root()Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected stripWhitespaceOnlyTextNodesImpl()V
    .registers 4

    .line 276
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    const-string v1, "//text()[normalize-space(.) = \'\']"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    .line 280
    invoke-interface {v0, p0, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    const/4 v0, 0x0

    .line 284
    :goto_1b
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 285
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    return-void
.end method

.method public abstract t(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract text(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected textImpl(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_18

    if-eqz p2, :cond_a

    .line 834
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    return-void

    .line 836
    :cond_a
    iget-object p2, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 830
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null text value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toWriter(Ljava/io/Writer;Ljava/util/Properties;)V
    .registers 4

    const/4 v0, 0x1

    .line 1348
    invoke-virtual {p0, v0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->toWriter(ZLjava/io/Writer;Ljava/util/Properties;)V

    return-void
.end method

.method public toWriter(ZLjava/io/Writer;Ljava/util/Properties;)V
    .registers 6

    .line 1309
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_11

    .line 1313
    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_1a

    .line 1315
    :cond_11
    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1318
    :goto_1a
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p0

    .line 1319
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    if-eqz p3, :cond_48

    .line 1322
    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1324
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1325
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1323
    invoke-virtual {p0, v1, p3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1328
    :cond_48
    invoke-virtual {p0, p1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method public abstract up()Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract up(I)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected upImpl(I)Lorg/w3c/dom/Node;
    .registers 4

    .line 1248
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    .line 1250
    :goto_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_12

    if-ge v0, p1, :cond_12

    .line 1251
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return-object p0
.end method

.method public abstract xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method public abstract xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/BaseXMLBuilder;
.end method

.method protected xpathFindImpl(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/w3c/dom/Node;
    .registers 6

    .line 503
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Node;

    if-eqz p2, :cond_12

    .line 504
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    return-object p2

    .line 505
    :cond_12
    new-instance v0, Ljavax/xml/xpath/XPathExpressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XPath expression \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not resolve to an Element in context "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, p1, p2, v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;
    .registers 5

    .line 400
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    if-eqz p3, :cond_d

    .line 403
    invoke-interface {v0, p3}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 405
    :cond_d
    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p1

    .line 407
    :try_start_11
    iget-object p0, p0, Lcom/jamesmurty/utils/BaseXMLBuilder;->xmlNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p0, p2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    const/4 p0, 0x0

    return-object p0
.end method
