.class public final Landroidx/window/embedding/SplitPairRule;
.super Landroidx/window/embedding/SplitRule;
.source "SourceFile"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# instance fields
.field private final clearTop:Z

.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final finishPrimaryWithSecondary:I

.field private final finishSecondaryWithPrimary:I


# direct methods
.method public constructor <init>(Ljava/util/Set;IIZIIFI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;IIZIIFI)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p5, p6, p7, p8}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    .line 42
    iput p2, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    .line 50
    iput p3, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    .line 57
    iput-boolean p4, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    .line 73
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;IIZIIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_b

    const/4 p3, 0x1

    :cond_b
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_10

    move p4, v0

    :cond_10
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_15

    move p5, v0

    :cond_15
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_1a

    move p6, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_20

    const/high16 p7, 0x3f000000    # 0.5f

    :cond_20
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_25

    const/4 p8, 0x3

    .line 31
    :cond_25
    invoke-direct/range {p0 .. p8}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroidx/window/embedding/SplitPairRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    invoke-super {p0, p1}, Landroidx/window/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 99
    :cond_11
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    check-cast p1, Landroidx/window/embedding/SplitPairRule;

    iget-object v3, p1, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 100
    :cond_1e
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    if-eq v1, v3, :cond_25

    return v2

    .line 101
    :cond_25
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    if-eq v1, v3, :cond_2c

    return v2

    .line 102
    :cond_2c
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    iget-boolean p1, p1, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    if-eq p0, p1, :cond_33

    return v2

    :cond_33
    return v0
.end method

.method public final getClearTop()Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    return p0
.end method

.method public final getFilters()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    return-object p0
.end method

.method public final getFinishPrimaryWithSecondary()I
    .registers 1

    .line 43
    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    return p0
.end method

.method public final getFinishSecondaryWithPrimary()I
    .registers 1

    .line 50
    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 108
    invoke-super {p0}, Landroidx/window/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;
    .registers 13

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Landroidx/window/embedding/SplitPairRule;

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 84
    iget v4, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    .line 85
    iget v5, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    .line 86
    iget-boolean v6, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    .line 87
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinWidth()I

    move-result v7

    .line 88
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinSmallestWidth()I

    move-result v8

    .line 89
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getSplitRatio()F

    move-result v9

    .line 90
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getLayoutDirection()I

    move-result v10

    .line 82
    invoke-direct/range {v2 .. v10}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-object v2
.end method
