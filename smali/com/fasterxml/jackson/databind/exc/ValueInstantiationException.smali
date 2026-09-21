.class public Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "SourceFile"


# instance fields
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;
    .registers 5

    .line 47
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)V

    return-object v0
.end method
