.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/JsonNode;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 136
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->nodeToString(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
