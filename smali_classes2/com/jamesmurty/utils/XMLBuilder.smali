.class public final Lcom/jamesmurty/utils/XMLBuilder;
.super Lcom/jamesmurty/utils/BaseXMLBuilder;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    const/4 v0, 0x0

    .line 186
    invoke-static {p0, v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-static {p0, p1, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 5

    .line 117
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder;

    .line 118
    invoke-static {p0, p1, p2, p3}, Lcom/jamesmurty/utils/BaseXMLBuilder;->createDocumentImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 346
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Ljava/io/File;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;ZZ)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 5

    .line 277
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;ZZ)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 5

    .line 246
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 302
    invoke-static {p0, v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;ZZ)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 4

    .line 215
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder;

    .line 216
    invoke-static {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->parseDocumentImpl(Lorg/xml/sax/InputSource;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 417
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->attributeImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->c(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 493
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 450
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public cdata([B)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 466
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl([B)V

    return-object p0
.end method

.method public bridge synthetic cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic comment(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public comment(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 482
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->commentImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->d(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->d([B)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public d([B)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 477
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->data(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->data([B)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 456
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public data([B)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 472
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->cdata([B)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic document()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder;->document()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public document()Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 573
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 394
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elem(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 389
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 383
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->lookupNamespaceURIImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 399
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 400
    new-instance p2, Lcom/jamesmurty/utils/XMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p2
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 405
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 406
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 411
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 412
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 359
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->importXMLBuilderImpl(Lcom/jamesmurty/utils/BaseXMLBuilder;)V

    return-object p0
.end method

.method public bridge synthetic insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 514
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->insertInstructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 498
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->instructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, v0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 536
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->namespaceImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->ns(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 553
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->r(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 531
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ref(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->ref(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ref(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 526
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reference(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public reference(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 520
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->referenceImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic root()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder;->root()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public root()Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 365
    new-instance v0, Lcom/jamesmurty/utils/XMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder;->stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/XMLBuilder;
    .registers 1

    .line 353
    invoke-super {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->stripWhitespaceOnlyTextNodesImpl()V

    return-object p0
.end method

.method public bridge synthetic t(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    .line 445
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 434
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->textImpl(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic up()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic up(I)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->up(I)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public up()Lcom/jamesmurty/utils/XMLBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0, v0}, Lcom/jamesmurty/utils/XMLBuilder;->up(I)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public up(I)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 558
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->upImpl(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 559
    instance-of p1, p0, Lorg/w3c/dom/Document;

    if-eqz p1, :cond_10

    .line 560
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {p1, p0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object p1

    .line 562
    :cond_10
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/jamesmurty/utils/XMLBuilder;->xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jamesmurty/utils/XMLBuilder;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/jamesmurty/utils/XMLBuilder;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/XMLBuilder;
    .registers 3

    .line 372
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathFindImpl(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 373
    new-instance p1, Lcom/jamesmurty/utils/XMLBuilder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/jamesmurty/utils/XMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method
