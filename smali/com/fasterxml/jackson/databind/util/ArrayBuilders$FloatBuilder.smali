.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;->_constructArray(I)[F

    move-result-object p0

    return-object p0
.end method

.method public final _constructArray(I)[F
    .registers 2

    .line 131
    new-array p0, p1, [F

    return-object p0
.end method
