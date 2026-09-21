.class public final Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyReferring"
.end annotation


# instance fields
.field private final _parent:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

.field public final _pojo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5

    .line 122
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 123
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    .line 124
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_pojo:Ljava/lang/Object;

    return-void
.end method
