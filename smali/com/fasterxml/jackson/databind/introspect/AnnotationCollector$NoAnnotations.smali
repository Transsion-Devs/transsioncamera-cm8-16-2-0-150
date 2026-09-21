.class public Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;
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
    name = "NoAnnotations"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public has(Ljava/lang/Class;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hasOneOf([Ljava/lang/Class;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
