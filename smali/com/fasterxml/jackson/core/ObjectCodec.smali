.class public abstract Lcom/fasterxml/jackson/core/ObjectCodec;
.super Lcom/fasterxml/jackson/core/TreeCodec;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TreeCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.end method
