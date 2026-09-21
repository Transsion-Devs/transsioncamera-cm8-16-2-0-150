.class public Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "SourceFile"


# instance fields
.field private final _cause:Ljava/lang/Error;


# direct methods
.method public constructor <init>(Ljava/lang/NoClassDefFoundError;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;->_cause:Ljava/lang/Error;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 3

    .line 27
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;->_cause:Ljava/lang/Error;

    throw p0
.end method
