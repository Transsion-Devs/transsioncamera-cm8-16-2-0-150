.class public final Lcom/fasterxml/jackson/databind/jsontype/NamedType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final _class:Ljava/lang/Class;

.field protected final _hashCode:I

.field protected _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-nez p2, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_hashCode:I

    .line 23
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 39
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    if-eq v2, v3, :cond_11

    return v1

    .line 40
    :cond_11
    check-cast p1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 41
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_24

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    .line 42
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    return-object p0
.end method

.method public hasName()Z
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_hashCode:I

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NamedType, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string p0, "null"

    goto :goto_35

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
