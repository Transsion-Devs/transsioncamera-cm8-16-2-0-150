.class public abstract Lcom/fasterxml/jackson/databind/node/NumericNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canConvertToInt()Z
.end method

.method public abstract canConvertToLong()Z
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 1

    .line 21
    sget-object p0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object p0
.end method

.method public abstract intValue()I
.end method

.method public isNaN()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract longValue()J
.end method
