.class public Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;
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
    name = "OneAnnotation"
.end annotation


# instance fields
.field private final _type:Ljava/lang/Class;

.field private final _value:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .registers 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_type:Ljava/lang/Class;

    .line 221
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_value:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_type:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    .line 228
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_value:Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public has(Ljava/lang/Class;)Z
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_type:Ljava/lang/Class;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasOneOf([Ljava/lang/Class;)Z
    .registers 7

    .line 240
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_10

    aget-object v3, p1, v2

    .line 241
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;->_type:Ljava/lang/Class;

    if-ne v3, v4, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return v1
.end method

.method public size()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
