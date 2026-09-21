.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    }
.end annotation


# instance fields
.field private final _collectAnnotations:Z

.field private final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field private final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V
    .registers 5

    .line 31
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    if-nez p1, :cond_8

    const/4 p3, 0x0

    .line 33
    :cond_8
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 34
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    return-void
.end method

.method private _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 9

    const/4 v0, 0x1

    .line 108
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 110
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_9

    aget-object v2, p2, v1

    .line 112
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_3e

    .line 115
    :cond_26
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    if-eqz v3, :cond_3e

    .line 119
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    iput-object v2, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_41
    return-void
.end method

.method private _findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;
    .registers 11

    .line 65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p3

    .line 69
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 71
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    invoke-direct {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_51

    aget-object v3, v0, v2

    .line 75
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_4e

    :cond_2b
    if-nez p3, :cond_32

    .line 82
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    :cond_32
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    invoke-direct {v4, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Field;)V

    .line 85
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    if-eqz v5, :cond_47

    .line 86
    iget-object v5, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v5

    iput-object v5, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 88
    :cond_47
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_51
    if-eqz p3, :cond_60

    .line 91
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz p1, :cond_60

    .line 92
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    :cond_60
    return-object p3
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .registers 3

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 133
    :cond_8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    .line 134
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static collectFields(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Z)Ljava/util/List;
    .registers 7

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;

    invoke-direct {v0, p0, p3, p2, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V

    .line 43
    invoke-virtual {v0, p1, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collect(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method collect(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/List;
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_a

    .line 50
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 52
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->build()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2f
    return-object p1
.end method
