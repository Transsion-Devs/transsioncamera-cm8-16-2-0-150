.class public Lorg/apache/commons/io/input/BoundedReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field private static final INVALID:I = -0x1


# instance fields
.field private charsRead:I

.field private markedAt:I

.field private final maxCharsFromTargetReader:I

.field private readAheadLimit:I

.field private final target:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 58
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 59
    iput p2, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 69
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 4

    .line 96
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    sub-int v1, p1, v0

    iput v1, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    .line 98
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 100
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0, p1}, Ljava/io/Reader;->mark(I)V

    return-void
.end method

.method public read()I
    .registers 5

    .line 113
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_8

    return v2

    .line 117
    :cond_8
    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    if-ltz v1, :cond_13

    sub-int v1, v0, v1

    iget v3, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    if-lt v1, v3, :cond_13

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 120
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 121
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_16

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    if-nez v0, :cond_d

    return v2

    :cond_d
    return v0

    :cond_e
    add-int v2, p2, v0

    int-to-char v1, v1

    .line 142
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return p3
.end method

.method public reset()V
    .registers 2

    .line 80
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 81
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    return-void
.end method
