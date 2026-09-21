.class public Lcom/jamesmurty/utils/NamespaceContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field protected element:Lorg/w3c/dom/Element;

.field protected nsUriToPrefixesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected prefixToNsUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->prefixToNsUriMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->prefixToNsUriMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->prefixToNsUriMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 55
    iget-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_17
    iget-object p0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->prefixToNsUriMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 62
    iget-object v1, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_17

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    const/4 p1, 0x0

    .line 67
    :cond_17
    iget-object p0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->nsUriToPrefixesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1b

    .line 74
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 77
    :cond_1b
    iget-object p0, p0, Lcom/jamesmurty/utils/NamespaceContextImpl;->element:Lorg/w3c/dom/Element;

    if-eqz p0, :cond_24

    .line 78
    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 2

    .line 86
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
