.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

.field public final metadata:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 16
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->metadata:Ljava/lang/Object;

    return-void
.end method

.method public static of(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;
    .registers 3

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;-><init>(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)V

    return-object v0
.end method
