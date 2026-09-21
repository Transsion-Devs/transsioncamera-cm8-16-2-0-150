.class public final Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortSlotChangeInfo$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->sortSlotChangeInfo(Ljava/util/List;)Ljava/util/List;
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 321
    invoke-virtual {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getClassType()Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-result-object p0

    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p0, v0, :cond_37

    .line 324
    invoke-virtual {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v3, :cond_35

    if-eq p0, v2, :cond_33

    if-ne p0, v1, :cond_2d

    :goto_2b
    move p0, v1

    goto :goto_50

    .line 327
    :cond_2d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_33
    move p0, v2

    goto :goto_50

    :cond_35
    move p0, v3

    goto :goto_50

    .line 331
    :cond_37
    invoke-virtual {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v3, :cond_33

    if-eq p0, v2, :cond_35

    if-ne p0, v1, :cond_4a

    goto :goto_2b

    .line 334
    :cond_4a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :goto_50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 322
    check-cast p2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 321
    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getClassType()Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-result-object p1

    if-ne p1, v0, :cond_85

    .line 324
    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p1

    sget-object p2, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v3, :cond_83

    if-eq p1, v2, :cond_81

    if-ne p1, v1, :cond_7b

    goto :goto_9e

    .line 327
    :cond_7b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_81
    move v1, v2

    goto :goto_9e

    :cond_83
    move v1, v3

    goto :goto_9e

    .line 331
    :cond_85
    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p1

    sget-object p2, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v3, :cond_81

    if-eq p1, v2, :cond_83

    if-ne p1, v1, :cond_98

    goto :goto_9e

    .line 334
    :cond_98
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :goto_9e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 322
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
