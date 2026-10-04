.class public final Lcom/google/gson/JsonArray;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final elements:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    return-void
.end method

.method private getAsSingleElement()Lcom/google/gson/JsonElement;
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 238
    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    return-object p0

    .line 240
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have size 1, but has size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lcom/google/gson/JsonElement;)V
    .registers 2

    if-nez p1, :cond_4

    .line 127
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 129
    :cond_4
    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 425
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/gson/JsonArray;

    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public getAsBoolean()Z
    .registers 1

    .line 401
    invoke-direct {p0}, Lcom/google/gson/JsonArray;->getAsSingleElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public getAsDouble()D
    .registers 3

    .line 279
    invoke-direct {p0}, Lcom/google/gson/JsonArray;->getAsSingleElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAsLong()J
    .registers 3

    .line 333
    invoke-direct {p0}, Lcom/google/gson/JsonArray;->getAsSingleElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 1

    .line 266
    invoke-direct {p0}, Lcom/google/gson/JsonArray;->getAsSingleElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
