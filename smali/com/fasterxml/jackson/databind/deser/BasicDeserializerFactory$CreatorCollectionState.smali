.class public Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CreatorCollectionState"
.end annotation


# instance fields
.field private _explicitConstructorCount:I

.field private _explicitFactoryCount:I

.field private _implicitConstructorCandidates:Ljava/util/List;

.field private _implicitFactoryCandidates:Ljava/util/List;

.field public final beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field public final context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final creatorParams:Ljava/util/Map;

.field public final creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

.field public final vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V
    .registers 6

    .line 2562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2563
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 2564
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 2565
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 2566
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    .line 2567
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creatorParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addImplicitConstructorCandidate(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .registers 3

    .line 2602
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitConstructorCandidates:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2603
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitConstructorCandidates:Ljava/util/List;

    .line 2605
    :cond_b
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitConstructorCandidates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImplicitFactoryCandidate(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .registers 3

    .line 2577
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitFactoryCandidates:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2578
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitFactoryCandidates:Ljava/util/List;

    .line 2580
    :cond_b
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitFactoryCandidates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public annotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .registers 1

    .line 2571
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    return-object p0
.end method

.method public hasExplicitConstructors()Z
    .registers 1

    .line 2613
    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitConstructorCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasExplicitFactories()Z
    .registers 1

    .line 2588
    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitFactoryCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasImplicitConstructorCandidates()Z
    .registers 1

    .line 2617
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitConstructorCandidates:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasImplicitFactoryCandidates()Z
    .registers 1

    .line 2592
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitFactoryCandidates:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public implicitConstructorCandidates()Ljava/util/List;
    .registers 1

    .line 2621
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitConstructorCandidates:Ljava/util/List;

    return-object p0
.end method

.method public implicitFactoryCandidates()Ljava/util/List;
    .registers 1

    .line 2596
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_implicitFactoryCandidates:Ljava/util/List;

    return-object p0
.end method

.method public increaseExplicitConstructorCount()V
    .registers 2

    .line 2609
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitConstructorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitConstructorCount:I

    return-void
.end method

.method public increaseExplicitFactoryCount()V
    .registers 2

    .line 2584
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitFactoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->_explicitFactoryCount:I

    return-void
.end method
