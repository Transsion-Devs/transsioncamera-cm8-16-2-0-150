.class abstract Lkotlin/collections/ArraysKt___ArraysKt;
.super Lkotlin/collections/ArraysKt___ArraysJvmKt;
.source "SourceFile"


# direct methods
.method public static asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25142
    array-length v0, p0

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    .line 25143
    :cond_f
    new-instance v0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final contains([BB)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([BB)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static distinct([Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12062
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static drop([Ljava/lang/Object;I)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_13

    .line 3418
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->takeLast([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3417
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final filterNotNull([Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNullTo([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final filterNotNullTo([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4334
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    if-eqz v2, :cond_15

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    return-object p1
.end method

.method public static first([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    array-length v0, p0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1131
    aget-object p0, p0, v0

    return-object p0

    .line 1130
    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    array-length v0, p0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8086
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static getLastIndex([Ljava/lang/Object;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8284
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_d

    .line 1573
    array-length v0, p0

    if-ge p1, v0, :cond_d

    aget-object p0, p0, p1

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final indexOf([BB)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1672
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1673
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public static final indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 1653
    array-length p1, p0

    :goto_9
    if-ge v0, p1, :cond_22

    .line 1654
    aget-object v1, p0, v0

    if-nez v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1659
    :cond_13
    array-length v1, p0

    :goto_14
    if-ge v0, v1, :cond_22

    .line 1660
    aget-object v2, p0, v0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public static final joinTo([BLjava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postfix"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncated"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24839
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24841
    array-length p3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v0, p3, :cond_4e

    aget-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_30

    .line 24842
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_30
    if-ltz p5, :cond_34

    if-gt v1, p5, :cond_4e

    :cond_34
    if-eqz p7, :cond_44

    .line 24845
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p7, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4b

    .line 24847
    :cond_44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_4e
    if-ltz p5, :cond_55

    if-le v1, p5, :cond_55

    .line 24850
    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24851
    :cond_55
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1
.end method

.method public static final joinTo([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postfix"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncated"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24817
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24819
    array-length p3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v0, p3, :cond_3a

    aget-object v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_30

    .line 24820
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_30
    if-ltz p5, :cond_34

    if-gt v1, p5, :cond_3a

    .line 24822
    :cond_34
    invoke-static {p1, v2, p7}, Lkotlin/text/StringsKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3a
    if-ltz p5, :cond_41

    if-le v1, p5, :cond_41

    .line 24825
    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24826
    :cond_41
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1
.end method

.method public static final joinToString([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postfix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinTo([BLjava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final joinToString([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postfix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinTo([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .registers 10

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 25050
    const-string p1, ", "

    :cond_6
    and-int/lit8 p8, p7, 0x2

    const-string v0, ""

    if-eqz p8, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    move-object p3, v0

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_17

    const/4 p4, -0x1

    :cond_17
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1d

    const-string p5, "..."

    :cond_1d
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_22

    const/4 p6, 0x0

    :cond_22
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-static/range {p2 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .registers 10

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 25038
    const-string p1, ", "

    :cond_6
    and-int/lit8 p8, p7, 0x2

    const-string v0, ""

    if-eqz p8, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    move-object p3, v0

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_17

    const/4 p4, -0x1

    :cond_17
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1d

    const-string p5, "..."

    :cond_1d
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_22

    const/4 p6, 0x0

    :cond_22
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-static/range {p2 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final lastIndexOf([BB)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2260
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_16

    :goto_a
    add-int/lit8 v2, v0, -0x1

    .line 2261
    aget-byte v3, p0, v0

    if-ne p1, v3, :cond_11

    return v0

    :cond_11
    if-gez v2, :cond_14

    goto :goto_16

    :cond_14
    move v0, v2

    goto :goto_a

    :cond_16
    :goto_16
    return v1
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5521
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_d

    goto :goto_23

    .line 5523
    :cond_d
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_23

    const/4 v2, 0x0

    .line 5525
    :goto_14
    aget-object v3, p0, v2

    .line 5526
    aget-object v4, p0, v1

    aput-object v4, p0, v2

    .line 5527
    aput-object v3, p0, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v0, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_23
    :goto_23
    return-void
.end method

.method public static single([C)C
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3024
    array-length v0, p0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    .line 3026
    aget-char p0, p0, v0

    return p0

    .line 3027
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3025
    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3197
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static slice([BLkotlin/ranges/IntRange;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4530
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4531
    :cond_15
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sliceArray([BLkotlin/ranges/IntRange;)[B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4827
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 4828
    :cond_14
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final sortedArrayWith([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6559
    array-length v0, p0

    if-nez v0, :cond_e

    return-object p0

    .line 6560
    :cond_e
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6843
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sortedArrayWith([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final takeLast([Ljava/lang/Object;I)Ljava/util/List;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_33

    if-nez p1, :cond_e

    .line 5094
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5095
    :cond_e
    array-length v0, p0

    if-lt p1, v0, :cond_16

    .line 5096
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v1, 0x1

    if-ne p1, v1, :cond_21

    sub-int/2addr v0, v1

    .line 5097
    aget-object p0, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5098
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    sub-int p1, v0, p1

    :goto_28
    if-ge p1, v0, :cond_32

    .line 5100
    aget-object v2, p0, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_32
    return-object v1

    .line 5093
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static toBooleanArray([Ljava/lang/Boolean;)[Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8799
    array-length v0, p0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static final toCollection([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10018
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    .line 10019
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-object p1
.end method

.method public static toDoubleArray([Ljava/lang/Double;)[D
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8820
    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static toFloatArray([Ljava/lang/Float;)[F
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8827
    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static toIntArray([Ljava/lang/Integer;)[I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8834
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10171
    array-length v0, p0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 10174
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 10173
    aget-object p0, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 10172
    :cond_18
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toLongArray([Ljava/lang/Long;)[J
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8841
    array-length v0, p0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static toMutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10270
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->asCollection$default([Ljava/lang/Object;ZILjava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final toMutableSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12547
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static final toSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10351
    array-length v0, p0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 10354
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_1c
    const/4 v0, 0x0

    .line 10353
    aget-object p0, p0, v0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 10352
    :cond_24
    invoke-static {}, Lkotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
