.class public final Lcom/jamesmurty/utils/XMLBuilder2;
.super Lcom/jamesmurty/utils/BaseXMLBuilder;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-static {p0, v2, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;->create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-static {p0, p1, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;->create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 5

    .line 136
    :try_start_0
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder2;

    .line 137
    invoke-static {p0, p1, p2, p3}, Lcom/jamesmurty/utils/BaseXMLBuilder;->createDocumentImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Document;)V
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    .line 140
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static create(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 4

    const/4 v0, 0x0

    .line 164
    invoke-static {p0, v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 343
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;->parse(Ljava/io/File;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 5

    .line 286
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 291
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 325
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;->parse(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 5

    .line 258
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 310
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 4

    .line 228
    :try_start_0
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder2;

    .line 229
    invoke-static {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->parseDocumentImpl(Lorg/xml/sax/InputSource;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Document;)V
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_9} :catch_16
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    .line 236
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_10
    move-exception p0

    .line 234
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_16
    move-exception p0

    .line 232
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .registers 2

    .line 104
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_7

    .line 105
    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    .line 107
    :cond_7
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilderRuntimeException;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .registers 1

    .line 595
    :try_start_0
    invoke-super {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 597
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public asString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    .line 609
    :try_start_0
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 611
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 428
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->attributeImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->c(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 504
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 461
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public cdata([B)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 477
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl([B)V

    return-object p0
.end method

.method public bridge synthetic cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 499
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic comment(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 493
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->commentImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->d(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->d([B)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 472
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public d([B)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->data(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->data([B)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public data([B)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 483
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic document()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->document()Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public document()Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 584
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder2;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 405
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elem(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 400
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 394
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->lookupNamespaceURIImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder2;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 410
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 411
    new-instance p2, Lcom/jamesmurty/utils/XMLBuilder2;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p2
.end method

.method public elementAsString()Ljava/lang/String;
    .registers 1

    .line 623
    :try_start_0
    invoke-super {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 625
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public elementAsString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    .line 637
    :try_start_0
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementAsString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 639
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 416
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 417
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 422
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 423
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 363
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->importXMLBuilderImpl(Lcom/jamesmurty/utils/BaseXMLBuilder;)V

    return-object p0
.end method

.method public bridge synthetic insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 525
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->insertInstructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 509
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->instructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, v0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 547
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->namespaceImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->ns(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 564
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->r(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 542
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ref(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->ref(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public ref(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 537
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reference(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 531
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->referenceImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic root()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->root()Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public root()Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 369
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder2;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 1

    .line 354
    :try_start_0
    invoke-super {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->stripWhitespaceOnlyTextNodesImpl()V
    :try_end_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_3} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    .line 357
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic t(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    .line 456
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder2;->text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 445
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->textImpl(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public toWriter(Ljava/io/Writer;Ljava/util/Properties;)V
    .registers 3

    .line 667
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->toWriter(Ljava/io/Writer;Ljava/util/Properties;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 669
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public toWriter(ZLjava/io/Writer;Ljava/util/Properties;)V
    .registers 4

    .line 652
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/jamesmurty/utils/BaseXMLBuilder;->toWriter(ZLjava/io/Writer;Ljava/util/Properties;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 654
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic up()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->up()Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic up(I)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->up(I)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public up()Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 2

    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/XMLBuilder2;->up(I)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public up(I)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 569
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->upImpl(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 570
    instance-of p1, p0, Lorg/w3c/dom/Document;

    if-eqz p1, :cond_10

    .line 571
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder2;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {p1, p0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Document;)V

    return-object p1

    .line 573
    :cond_10
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder2;->xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder2;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder2;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder2;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder2;
    .registers 3

    .line 380
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathFindImpl(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 381
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/jamesmurty/utils/XMLBuilder2;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    :try_end_a
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p0

    .line 383
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .registers 3

    .line 697
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 699
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;
    .registers 4

    .line 682
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathQuery(Ljava/lang/String;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 684
    invoke-static {p0}, Lcom/jamesmurty/utils/XMLBuilder2;->wrapExceptionAsRuntimeException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
