.class public final Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    invoke-direct {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final diffNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "newNodes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oriNodes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    check-cast p2, Ljava/lang/Iterable;

    .line 100
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    .line 15
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.uuid"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStringId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "it.stringId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 17
    :cond_3c
    check-cast p1, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ori node not found"

    const/4 v3, 0x0

    if-eqz v1, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_ad

    .line 19
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_64

    goto :goto_ad

    :cond_64
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStringId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    move-object v3, v6

    :cond_90
    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    if-eqz v3, :cond_9f

    .line 24
    new-instance v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-direct {v2, v4, v3, v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;-><init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 23
    :cond_9f
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 28
    :cond_ad
    :goto_ad
    new-instance v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    sget-object v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-direct {v2, v3, v1, v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;-><init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 105
    :cond_b8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    goto :goto_ed

    :cond_ec
    move-object v4, v3

    :goto_ed
    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    if-eqz v4, :cond_fc

    .line 34
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;-><init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 33
    :cond_fc
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_102
    return-object p0
.end method

.method public final sortSlotChangeInfo(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "oriInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    check-cast p1, Ljava/lang/Iterable;

    .line 113
    new-instance p0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortSlotChangeInfo$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortSlotChangeInfo$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final sortTrackChangeInfo(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "oriInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    check-cast p1, Ljava/lang/Iterable;

    .line 107
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 42
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-eq v3, v4, :cond_3b

    .line 43
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    if-ne v2, v4, :cond_10

    .line 42
    :cond_3b
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 45
    :cond_3f
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 110
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 111
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$2;

    invoke-direct {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$2;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 65
    check-cast p1, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 112
    new-instance p1, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$3;

    invoke-direct {p1}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils$sortTrackChangeInfo$$inlined$sortedBy$3;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
