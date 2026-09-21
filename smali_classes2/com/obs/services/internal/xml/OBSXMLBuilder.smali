.class public Lcom/obs/services/internal/xml/OBSXMLBuilder;
.super Lcom/jamesmurty/utils/BaseXMLBuilder;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "com.sun.org.apache.xerces.internal"

.field private static xmlDocumentBuilderFactoryClass:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 5

    .line 157
    new-instance v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->createDocumentImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected static createDocumentImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/w3c/dom/Document;
    .registers 5

    .line 66
    invoke-static {}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->findDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 68
    invoke-static {v0, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->enableOrDisableExternalEntityParsing(Ljavax/xml/parsers/DocumentBuilderFactory;Z)V

    .line 69
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    if-eqz p1, :cond_1f

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1f

    .line 73
    invoke-interface {p2, p1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_23

    .line 75
    :cond_1f
    invoke-interface {p2, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 77
    :goto_23
    invoke-interface {p2, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method private static findDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 5

    .line 57
    sget-object v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v1, "com.sun.org.apache.xerces.internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    return-object v0

    .line 61
    :cond_11
    sget-object v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->newInstance(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/DocumentBuilderFactory;

    return-object v0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 96
    new-instance v0, Lcom/obs/services/internal/xml/OBSXMLBuilder$1;

    invoke-direct {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "ZZ)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    const-class v1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    if-nez p1, :cond_1b

    if-eqz p3, :cond_e

    .line 114
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_1b

    :catch_c
    move-exception p1

    goto :goto_20

    .line 116
    :cond_e
    invoke-static {}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p1, :cond_15

    goto :goto_1b

    .line 118
    :cond_15
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw p1

    .line 123
    :cond_1b
    :goto_1b
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_1f} :catch_c

    return-object p0

    :goto_20
    if-eqz p2, :cond_2b

    .line 126
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 128
    :cond_2b
    throw p1
.end method

.method private static newInstance(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "ZZ)TT;"
        }
    .end annotation

    .line 135
    const-string v0, "Provider "

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    .line 136
    const-string v1, "com.sun.org.apache.xerces.internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p2, 0x0

    const/4 p4, 0x1

    .line 143
    :cond_14
    :try_start_14
    invoke-static {p1, p2, p3, p4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;

    move-result-object p2

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 147
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception p0

    goto :goto_49

    :catch_29
    move-exception p0

    goto :goto_66

    .line 145
    :cond_2b
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be cast to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_49} :catch_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_49} :catch_27

    .line 152
    :goto_49
    new-instance p2, Ljavax/xml/parsers/FactoryConfigurationError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be instantiated: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p2

    .line 150
    :goto_66
    new-instance p2, Ljavax/xml/parsers/FactoryConfigurationError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p2
.end method

.method public static parse(Lorg/xml/sax/InputSource;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-static {p0, v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->parse(Lorg/xml/sax/InputSource;ZZ)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;ZZ)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 4

    .line 162
    new-instance v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    invoke-static {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->parseDocumentImpl(Lorg/xml/sax/InputSource;ZZ)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected static parseDocumentImpl(Lorg/xml/sax/InputSource;ZZ)Lorg/w3c/dom/Document;
    .registers 6

    .line 83
    invoke-static {}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->findDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 84
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 86
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 89
    invoke-static {v0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->enableOrDisableExternalEntityParsing(Ljavax/xml/parsers/DocumentBuilderFactory;Z)V

    .line 90
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static setXmlDocumentBuilderFactoryClass(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_10

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 44
    sput-object p0, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xmlDocumentBuilderFactoryClass:Ljava/lang/String;

    :cond_10
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 234
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->attributeImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->c(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 309
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->comment(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cdata([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public cdata(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 266
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public cdata([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 282
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->cdataImpl([B)V

    return-object p0
.end method

.method public bridge synthetic cmnt(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cmnt(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public cmnt(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 304
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->comment(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic comment(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->comment(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public comment(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 298
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->commentImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->d(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->d([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public d([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->data(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic data([B)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->data([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 272
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public data([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->cdata([B)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic document()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->document()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public document()Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 389
    new-instance v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elem(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic element(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 200
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->lookupNamespaceURIImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 216
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 217
    new-instance p2, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p2
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elementBefore(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public elementBefore(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 222
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 223
    new-instance p1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public elementBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 228
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->elementBeforeImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 229
    new-instance p1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 394
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic i(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 178
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->importXMLBuilderImpl(Lcom/jamesmurty/utils/BaseXMLBuilder;)V

    return-object p0
.end method

.method public bridge synthetic insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insertInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 330
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->insertInstructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic inst(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->inst(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public inst(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public instruction(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 314
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->instructionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->namespace(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public namespace(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 352
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->namespaceImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->ns(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ns(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->ns(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 369
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->namespace(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ns(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->r(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->reference(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ref(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->ref(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public ref(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->reference(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reference(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->reference(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public reference(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 336
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->referenceImpl(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic root()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->root()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public root()Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 184
    new-instance v0, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic stripWhitespaceOnlyTextNodes()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->stripWhitespaceOnlyTextNodes()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public stripWhitespaceOnlyTextNodes()Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 1

    .line 172
    invoke-super {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->stripWhitespaceOnlyTextNodesImpl()V

    return-object p0
.end method

.method public bridge synthetic t(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    .line 261
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/String;Z)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;Z)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;Z)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;Z)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 250
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->textImpl(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic up()Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic up(I)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up(I)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public up()Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up(I)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public up(I)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 374
    invoke-super {p0, p1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->upImpl(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 375
    instance-of p1, p0, Lorg/w3c/dom/Document;

    if-eqz p1, :cond_10

    .line 376
    new-instance p1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Document;)V

    return-object p1

    .line 378
    :cond_10
    new-instance p1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xpathFind(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/jamesmurty/utils/BaseXMLBuilder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public xpathFind(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 189
    invoke-super {p0, p1, p2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->xpathFindImpl(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 190
    new-instance p1, Lcom/obs/services/internal/xml/OBSXMLBuilder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    return-object p1
.end method
