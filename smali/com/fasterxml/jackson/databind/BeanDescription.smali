.class public abstract Lcom/fasterxml/jackson/databind/BeanDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method


# virtual methods
.method public abstract findAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract findAnySetterAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract findBackReferences()Ljava/util/List;
.end method

.method public abstract findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.end method

.method public abstract findDefaultViews()[Ljava/lang/Class;
.end method

.method public abstract findDeserializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.end method

.method public abstract findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.end method

.method public abstract findInjectables()Ljava/util/Map;
.end method

.method public abstract findJsonKeyAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract findPOJOBuilder()Ljava/lang/Class;
.end method

.method public abstract findPOJOBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.end method

.method public abstract findProperties()Ljava/util/List;
.end method

.method public abstract findPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.end method

.method public abstract findSerializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.end method

.method public getBeanClass()Ljava/lang/Class;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public abstract getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
.end method

.method public abstract getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.end method

.method public abstract getConstructors()Ljava/util/List;
.end method

.method public abstract getConstructorsWithMode()Ljava/util/List;
.end method

.method public abstract getFactoryMethods()Ljava/util/List;
.end method

.method public abstract getFactoryMethodsWithMode()Ljava/util/List;
.end method

.method public abstract getIgnoredPropertyNames()Ljava/util/Set;
.end method

.method public abstract getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method

.method public abstract hasKnownClassAnnotations()Z
.end method

.method public abstract instantiateBean(Z)Ljava/lang/Object;
.end method

.method public isNonStaticInnerClass()Z
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->isNonStaticInnerClass()Z

    move-result p0

    return p0
.end method
