.class Lcom/google/common/flogger/context/Tags$LightweightTagMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightweightTagMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMALL_ARRAY_LENGTH:I = 0x10

.field private static final singletonOffsets:[I


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private hashCode:Ljava/lang/Integer;

.field private final offsets:[I

.field private toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 366
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$1;

    invoke-direct {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 382
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->singletonOffsets:[I

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V
    .registers 11

    .line 433
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 403
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    .line 408
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result v1

    add-int v5, v0, v1

    .line 440
    invoke-direct {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getTotalElementCount()I

    move-result v0

    invoke-direct {p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getTotalElementCount()I

    move-result v1

    add-int/2addr v0, v1

    new-array v6, v0, [Ljava/lang/Object;

    add-int/lit8 v0, v5, 0x1

    .line 441
    new-array v7, v0, [I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 443
    invoke-direct/range {v2 .. v7}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mergeTagMaps(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;I[Ljava/lang/Object;[I)I

    move-result p0

    .line 444
    invoke-static {v6, v7, p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->adjustOffsetsAndMaybeResize([Ljava/lang/Object;[II)[Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v2, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    .line 445
    invoke-static {v7}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->maybeResizeOffsetsArray([I)[I

    move-result-object p0

    iput-object p0, v2, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 412
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 403
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    .line 408
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->singletonOffsets:[I

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;)V"
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 403
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    .line 408
    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 422
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->countMapEntries(Ljava/util/List;)I

    move-result v0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    .line 424
    new-array v2, v2, [I

    .line 426
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->makeTagMap(Ljava/util/List;I[Ljava/lang/Object;[I)I

    move-result p1

    .line 427
    invoke-static {v1, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->maybeResizeElementArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    .line 428
    iput-object v2, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .registers 1

    .line 363
    sget-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method private static adjustOffsetsAndMaybeResize([Ljava/lang/Object;[II)[Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 599
    aget v1, p1, v0

    sub-int v2, v1, p2

    if-nez v2, :cond_8

    return-object p0

    :cond_8
    move v3, v0

    :goto_9
    if-gt v3, p2, :cond_13

    .line 605
    aget v4, p1, v3

    sub-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 608
    :cond_13
    aget p1, p1, p2

    sub-int v2, p1, p2

    .line 610
    array-length v3, p0

    invoke-static {v3, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 611
    new-array p1, p1, [Ljava/lang/Object;

    .line 612
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    :cond_24
    move-object p1, p0

    .line 617
    :goto_25
    invoke-static {p0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;II[",
            "Ljava/lang/Object;",
            "[I)I"
        }
    .end annotation

    .line 583
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    .line 584
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 585
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValuesArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v0

    invoke-static {v2, v0, p4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, p4, p2

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    .line 589
    aput p3, p5, p2

    return p3
.end method

.method private static countMapEntries(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;)I"
        }
    .end annotation

    .line 454
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    .line 455
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 456
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return v1
.end method

.method private getEntryOrNull(I)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_e

    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalElementCount()I
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method private makeTagMap(Ljava/util/List;I[Ljava/lang/Object;[I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;I[",
            "Ljava/lang/Object;",
            "[I)I"
        }
    .end annotation

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, p2

    move-object v2, v0

    move-object v4, v2

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    .line 472
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 473
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-direct {p0, v2, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, p3, v1

    .line 475
    aput v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    .line 479
    :cond_2e
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->value:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->value:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 480
    # getter for: Lcom/google/common/flogger/context/Tags$KeyValuePair;->value:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 481
    aput-object v4, p3, v3

    move v3, v5

    goto :goto_9

    :cond_48
    if-ne v1, p2, :cond_4d

    .line 488
    aput v3, p4, p2

    return v3

    .line 486
    :cond_4d
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "corrupted tag map"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static maybeResizeElementArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3

    .line 625
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_b
    return-object p0
.end method

.method private static maybeResizeOffsetsArray([I)[I
    .registers 3

    const/4 v0, 0x0

    .line 631
    aget v0, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 632
    array-length v1, p0

    invoke-static {v1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method private mergeTagMaps(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;I[Ljava/lang/Object;[I)I
    .registers 15

    const/4 v0, 0x0

    .line 505
    aput p3, p5, v0

    .line 509
    invoke-direct {p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 511
    invoke-direct {p2, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v2

    move v6, p3

    move p3, v0

    move v5, p3

    move-object v4, v1

    :goto_f
    if-nez v4, :cond_15

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    return v5

    :cond_15
    :goto_15
    if-nez v4, :cond_19

    const/4 v1, 0x1

    goto :goto_5c

    :cond_19
    if-nez v2, :cond_1d

    const/4 v1, -0x1

    goto :goto_5c

    .line 523
    :cond_1d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5c

    .line 526
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, p4, v5

    add-int/lit8 v5, v5, 0x1

    .line 528
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-static {v1, v2, p4, v6}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mergeValues(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;[Ljava/lang/Object;I)I

    move-result v6

    .line 529
    aput v6, p5, v5

    add-int/lit8 v0, v0, 0x1

    .line 530
    invoke-direct {p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v4

    add-int/lit8 p3, p3, 0x1

    .line 531
    invoke-direct {p2, p3}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_f

    :cond_5c
    :goto_5c
    if-gez v1, :cond_71

    add-int/lit8 v1, v5, 0x1

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    .line 538
    invoke-direct/range {v3 .. v8}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result p0

    add-int/lit8 v0, v0, 0x1

    .line 539
    invoke-direct {p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object p4

    move v6, p0

    move-object v4, p4

    move v5, v1

    goto :goto_86

    :cond_71
    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    move-object v1, v4

    add-int/lit8 p0, v5, 0x1

    move-object v4, v2

    .line 541
    invoke-direct/range {v3 .. v8}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result p4

    add-int/lit8 p3, p3, 0x1

    .line 542
    invoke-direct {p2, p3}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object p5

    move v5, p0

    move v6, p4

    move-object v2, p5

    move-object v4, v1

    :goto_86
    move-object p0, v3

    move-object p4, v7

    move-object p5, v8

    goto :goto_f
.end method

.method private static mergeValues(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;[Ljava/lang/Object;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "*>;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 555
    :goto_3
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-lt v1, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    goto :goto_11

    :cond_10
    return p3

    .line 556
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ne v1, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_22

    :cond_19
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ne v2, v3, :cond_21

    const/4 v3, -0x1

    goto :goto_22

    :cond_21
    move v3, v0

    :goto_22
    if-nez v3, :cond_34

    .line 558
    # getter for: Lcom/google/common/flogger/context/Tags;->VALUE_COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$400()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    :cond_34
    if-gez v3, :cond_3d

    add-int/lit8 v3, v1, 0x1

    .line 563
    invoke-virtual {p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4a

    :cond_3d
    add-int/lit8 v4, v2, 0x1

    .line 565
    invoke-virtual {p1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_47

    add-int/lit8 v1, v1, 0x1

    :cond_47
    move v3, v1

    move-object v1, v2

    move v2, v4

    :goto_4a
    add-int/lit8 v4, p3, 0x1

    .line 571
    aput-object v1, p2, p3

    move v1, v3

    move p3, v4

    goto :goto_3
.end method

.method private static mustResize(II)Z
    .registers 3

    const/16 v0, 0x10

    if-le p0, v0, :cond_c

    mul-int/lit8 p0, p0, 0x9

    mul-int/lit8 p1, p1, 0xa

    if-le p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-direct {v1, p0, p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 663
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    if-nez v0, :cond_e

    .line 752
    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    .line 754
    :cond_e
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 759
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 760
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 762
    :cond_a
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    return-object p0
.end method
