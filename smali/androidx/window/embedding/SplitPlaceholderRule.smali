.class public final Landroidx/window/embedding/SplitPlaceholderRule;
.super Landroidx/window/embedding/SplitRule;
.source "SourceFile"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# instance fields
.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final finishPrimaryWithSecondary:I

.field private final isSticky:Z

.field private final placeholderIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;",
            "Landroid/content/Intent;",
            "ZIIIFI)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p5, p6, p7, p8}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    .line 36
    iput-object p2, p0, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    .line 42
    iput-boolean p3, p0, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    .line 49
    iput p4, p0, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    .line 66
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    const/4 p4, 0x1

    :cond_7
    move v4, p4

    and-int/lit8 p4, v0, 0x10

    const/4 v1, 0x0

    if-eqz p4, :cond_f

    move v5, v1

    goto :goto_10

    :cond_f
    move v5, p5

    :goto_10
    and-int/lit8 p4, v0, 0x20

    if-eqz p4, :cond_16

    move v6, v1

    goto :goto_17

    :cond_16
    move v6, p6

    :goto_17
    and-int/lit8 p4, v0, 0x40

    if-eqz p4, :cond_1f

    const/high16 p4, 0x3f000000    # 0.5f

    move v7, p4

    goto :goto_21

    :cond_1f
    move/from16 v7, p7

    :goto_21
    and-int/lit16 p4, v0, 0x80

    if-eqz p4, :cond_2c

    const/4 p4, 0x3

    move v8, p4

    :goto_27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    goto :goto_2f

    :cond_2c
    move/from16 v8, p8

    goto :goto_27

    .line 27
    :goto_2f
    invoke-direct/range {v0 .. v8}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Landroidx/window/embedding/SplitPlaceholderRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 90
    :cond_a
    invoke-super {p0, p1}, Landroidx/window/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 92
    :cond_11
    iget-object v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    check-cast p1, Landroidx/window/embedding/SplitPlaceholderRule;

    iget-object v3, p1, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 93
    :cond_1e
    iget-boolean v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    iget-boolean v3, p1, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    if-eq v1, v3, :cond_25

    return v2

    .line 94
    :cond_25
    iget v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    iget v3, p1, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    if-eq v1, v3, :cond_2c

    return v2

    .line 95
    :cond_2c
    iget-object p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    iget-object p1, p1, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getFilters()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    return-object p0
.end method

.method public final getFinishPrimaryWithSecondary()I
    .registers 1

    .line 50
    iget p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    return p0
.end method

.method public final getPlaceholderIntent()Landroid/content/Intent;
    .registers 1

    .line 36
    iget-object p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 101
    invoke-super {p0}, Landroidx/window/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-boolean v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isSticky()Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    return p0
.end method

.method public final plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/SplitPlaceholderRule;
    .registers 13

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    iget-object v1, p0, Landroidx/window/embedding/SplitPlaceholderRule;->filters:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Landroidx/window/embedding/SplitPlaceholderRule;

    .line 76
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 77
    iget-object v4, p0, Landroidx/window/embedding/SplitPlaceholderRule;->placeholderIntent:Landroid/content/Intent;

    .line 78
    iget-boolean v5, p0, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky:Z

    .line 79
    iget v6, p0, Landroidx/window/embedding/SplitPlaceholderRule;->finishPrimaryWithSecondary:I

    .line 80
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinWidth()I

    move-result v7

    .line 81
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinSmallestWidth()I

    move-result v8

    .line 82
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getSplitRatio()F

    move-result v9

    .line 83
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getLayoutDirection()I

    move-result v10

    .line 75
    invoke-direct/range {v2 .. v10}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V

    return-object v2
.end method
