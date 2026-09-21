.class Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags$LightweightTagMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedArraySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final index:I

.field final synthetic this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V
    .registers 3

    .line 676
    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 677
    iput p2, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    return-void
.end method

.method private getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 698
    iget p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->ENTRY_COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1100()Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_a
    # getter for: Lcom/google/common/flogger/context/Tags;->VALUE_COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$400()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    .line 710
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v2

    invoke-direct {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, v1, v2, p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method getEnd()I
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I

    move-result-object v0

    iget p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method getStart()I
    .registers 3

    .line 690
    iget v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I

    move-result-object v0

    iget p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    aget p0, v0, p0

    return p0
.end method

.method getValue(I)Ljava/lang/Object;
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result p0

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method getValuesArray()[Ljava/lang/Object;
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    # getter for: Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 715
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet$1;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 703
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
