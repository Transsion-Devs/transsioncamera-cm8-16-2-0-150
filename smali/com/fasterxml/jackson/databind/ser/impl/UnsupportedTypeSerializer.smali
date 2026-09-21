.class public Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# instance fields
.field protected final _message:Ljava/lang/String;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V
    .registers 4

    .line 28
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 29
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 30
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;->_message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    .line 35
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;->_message:Ljava/lang/String;

    invoke-virtual {p3, p1, p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
