.class public Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Annotations;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoAnnotations"
.end annotation


# instance fields
.field private final _type1:Ljava/lang/Class;

.field private final _type2:Ljava/lang/Class;

.field private final _value1:Ljava/lang/annotation/Annotation;

.field private final _value2:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .registers 5

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    .line 265
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value1:Ljava/lang/annotation/Annotation;

    .line 266
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    .line 267
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value2:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    .line 274
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value1:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne v0, p1, :cond_e

    .line 277
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value2:Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public has(Ljava/lang/Class;)Z
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-eq v0, p1, :cond_b

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne p0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public hasOneOf([Ljava/lang/Class;)Z
    .registers 7

    .line 289
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_15

    aget-object v3, p1, v2

    .line 290
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-eq v3, v4, :cond_13

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne v3, v4, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public size()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
