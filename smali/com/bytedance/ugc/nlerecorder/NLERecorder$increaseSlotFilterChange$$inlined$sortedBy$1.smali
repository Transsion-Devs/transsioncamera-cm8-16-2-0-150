.class public final Lcom/bytedance/ugc/nlerecorder/NLERecorder$increaseSlotFilterChange$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseSlotFilterChange(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1001
    invoke-virtual {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p0

    check-cast p2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
