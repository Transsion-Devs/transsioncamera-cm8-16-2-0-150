.class final Lkotlin/enums/EnumEntriesList;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"

# interfaces
.implements Lkotlin/enums/EnumEntries;
.implements Ljava/io/Serializable;


# instance fields
.field private final entries:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .registers 3

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 49
    iput-object p1, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Enum;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->contains(Ljava/lang/Enum;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Enum;
    .registers 4

    .line 59
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 60
    iget-object p0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 56
    iget-object p0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length p0, p0

    return p0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 79
    iget-object p0, p0, Lkotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_14

    return v0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/Enum;)I
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/enums/EnumEntriesList;->lastIndexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method
