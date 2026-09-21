.class public final Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$3;
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
    .registers 10
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

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_13

    move p0, p1

    goto :goto_1b

    :cond_13
    sget-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_1b
    const/4 v0, 0x6

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p0, v6, :cond_36

    if-eq p0, v5, :cond_34

    if-eq p0, v4, :cond_32

    if-eq p0, v2, :cond_30

    if-eq p0, v3, :cond_2e

    move p0, v1

    goto :goto_37

    :cond_2e
    move p0, v0

    goto :goto_37

    :cond_30
    move p0, v3

    goto :goto_37

    :cond_32
    move p0, v4

    goto :goto_37

    :cond_34
    move p0, v5

    goto :goto_37

    :cond_36
    move p0, v6

    .line 328
    :goto_37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 321
    check-cast p2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p2

    if-nez p2, :cond_4c

    goto :goto_54

    :cond_4c
    sget-object p1, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    :goto_54
    if-eq p1, v6, :cond_66

    if-eq p1, v5, :cond_64

    if-eq p1, v4, :cond_62

    if-eq p1, v2, :cond_60

    if-eq p1, v3, :cond_67

    move v0, v1

    goto :goto_67

    :cond_60
    move v0, v3

    goto :goto_67

    :cond_62
    move v0, v4

    goto :goto_67

    :cond_64
    move v0, v5

    goto :goto_67

    :cond_66
    move v0, v6

    .line 328
    :cond_67
    :goto_67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 321
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
