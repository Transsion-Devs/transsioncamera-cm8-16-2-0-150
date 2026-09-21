.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final transient _annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

.field protected final transient _typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 38
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-void
.end method


# virtual methods
.method public final fixAccess(Z)V
    .registers 2

    .line 137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 139
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    :cond_9
    return-void
.end method

.method public getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDeclaringClass()Ljava/lang/Class;
.end method

.method public getFullName()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMember()Ljava/lang/reflect/Member;
.end method

.method public abstract getValue(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final hasAnnotation(Ljava/lang/Class;)Z
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->has(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public hasOneOf([Ljava/lang/Class;)Z
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->hasOneOf([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public abstract setValue(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
.end method
