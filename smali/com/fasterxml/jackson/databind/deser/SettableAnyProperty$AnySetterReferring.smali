.class Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnySetterReferring"
.end annotation


# instance fields
.field private final _parent:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field private final _pojo:Ljava/lang/Object;

.field private final _propName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 229
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 230
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;->_pojo:Ljava/lang/Object;

    .line 231
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;->_propName:Ljava/lang/String;

    return-void
.end method
