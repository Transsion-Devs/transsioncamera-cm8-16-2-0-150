.class public interface abstract Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
