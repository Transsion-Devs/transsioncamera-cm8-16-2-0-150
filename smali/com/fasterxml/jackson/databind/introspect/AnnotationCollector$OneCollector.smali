.class Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneCollector"
.end annotation


# instance fields
.field private _type:Ljava/lang/Class;

.field private _value:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .registers 4

    .line 94
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;-><init>(Ljava/lang/Object;)V

    .line 95
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    .line 96
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .registers 8

    .line 116
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 118
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    if-ne v2, v4, :cond_b

    .line 119
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 122
    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NCollector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->_data:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NCollector;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->of(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p0

    return-object p0
.end method

.method public asAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .registers 3

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_value:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public isPresent(Ljava/lang/annotation/Annotation;)Z
    .registers 2

    .line 111
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;->_type:Ljava/lang/Class;

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
