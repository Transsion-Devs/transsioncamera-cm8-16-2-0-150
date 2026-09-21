.class public Lcom/fasterxml/jackson/databind/node/BooleanNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "SourceFile"


# static fields
.field public static final FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

.field public static final TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;


# instance fields
.field private final _value:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return-void
.end method

.method public static getFalse()Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .registers 1

    .line 38
    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .registers 1

    .line 37
    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p0, :cond_7

    const-string p0, "true"

    return-object p0

    :cond_7
    const-string p0, "false"

    return-object p0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_7
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 103
    :cond_8
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    if-nez v2, :cond_d

    return v1

    .line 106
    :cond_d
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    check-cast p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-ne p0, p1, :cond_16

    return v0

    :cond_16
    return v1
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 1

    .line 44
    sget-object p0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 91
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 3

    .line 86
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method
