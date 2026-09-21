.class Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeanReferring"
.end annotation


# instance fields
.field private _bean:Ljava/lang/Object;

.field private final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field private final _prop:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .registers 6

    .line 1129
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1130
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 1131
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;->_prop:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-void
.end method


# virtual methods
.method public setBean(Ljava/lang/Object;)V
    .registers 2

    .line 1135
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;->_bean:Ljava/lang/Object;

    return-void
.end method
