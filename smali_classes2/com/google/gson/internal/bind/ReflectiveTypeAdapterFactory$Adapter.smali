.class public abstract Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field private final fieldsData:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;)V
    .registers 2

    .line 476
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->fieldsData:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    return-void
.end method


# virtual methods
.method abstract createAccumulator()Ljava/lang/Object;
.end method

.method abstract finalize(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5

    .line 500
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 501
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    .line 505
    :cond_d
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->createAccumulator()Ljava/lang/Object;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->fieldsData:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    iget-object v1, v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;->deserializedFields:Ljava/util/Map;

    .line 509
    :try_start_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 510
    :goto_18
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 511
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v2, :cond_2e

    .line 514
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_18

    .line 516
    :cond_2e
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->readField(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_31} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_31} :catch_3a

    goto :goto_18

    .line 524
    :cond_32
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 525
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->finalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_3a
    move-exception p0

    .line 522
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_40
    move-exception p0

    .line 520
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method abstract readField(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;)V
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_6

    .line 483
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 487
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 489
    :try_start_9
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->fieldsData:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;->serializedFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 490
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_20} :catch_25

    goto :goto_11

    .line 495
    :cond_21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void

    :catch_25
    move-exception p0

    .line 493
    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
