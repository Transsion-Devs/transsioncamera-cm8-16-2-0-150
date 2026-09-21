.class public final Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->sortTrackChangeInfo(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 321
    invoke-virtual {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_21

    if-eq p0, v1, :cond_1f

    if-ne p0, v0, :cond_19

    move p0, v0

    goto :goto_22

    .line 324
    :cond_19
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1f
    move p0, v1

    goto :goto_22

    :cond_21
    move p0, v2

    :goto_22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 321
    check-cast p2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_41

    if-eq p1, v1, :cond_3f

    if-ne p1, v0, :cond_39

    goto :goto_42

    .line 324
    :cond_39
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3f
    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 321
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
