.class public Lcom/fasterxml/jackson/databind/util/ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# instance fields
.field private final _a:[Ljava/lang/Object;

.field private _index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 23
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 27
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    .line 30
    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    aget-object p0, v1, v0

    return-object p0

    .line 28
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 1

    .line 33
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
