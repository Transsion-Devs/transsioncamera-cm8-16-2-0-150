.class public final Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper$Companion;

.field public static final INDEX_NOT_FOUND:I = -0x2b03

.field public static final MATERIAL_ID_TEXT_EPILOGUE:Ljava/lang/String; = "MATERIAL_ID_TEXT_EPILOGUE"

.field public static final SEGMENT_ID_TEXT_EPILOGUE:Ljava/lang/String; = "SEGMENT_ID_TEXT_EPILOGUE"

.field public static final SEGMENT_ID_VIDEO_MAIN_TRACK:Ljava/lang/String; = "SEGMENT_ID_VIDEO_MAIN_TRACK"


# instance fields
.field private final mainTrackClipIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final otherClipIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIndexMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->Companion:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->trackIndexMapper:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->otherClipIndexSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addMainSegmentClipIndex(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addOtherSegmentClip(Ljava/lang/String;)V
    .registers 3

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->otherClipIndexSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addSegment(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->trackIndexMapper:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getAudioSegmentClipIndex(Ljava/lang/String;)I
    .registers 3

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string v0, "SEGMENT_ID_VIDEO_MAIN_TRACK"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 134
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result p0

    const/16 p1, -0x2b03

    if-eq p0, p1, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    return p1

    .line 131
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid segmentId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMainSegmentSize()I
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getSegmentTrackIndex(Ljava/lang/String;)I
    .registers 3

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v0, "SEGMENT_ID_VIDEO_MAIN_TRACK"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->trackIndexMapper:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1c

    const/16 p0, -0x2b03

    return p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getVideoSegmentClipIndex(Ljava/lang/String;)I
    .registers 4

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string v0, "SEGMENT_ID_VIDEO_MAIN_TRACK"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 107
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x2b03

    if-nez v0, :cond_25

    .line 110
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 111
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_24
    return v1

    .line 118
    :cond_25
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->otherClipIndexSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    return p0

    :cond_2f
    return v1

    .line 103
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid segmentId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSegment(Ljava/lang/String;)V
    .registers 3

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->trackIndexMapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->otherClipIndexSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateMainSegmentOrder([I)V
    .registers 7

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 143
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2e

    aget v3, p1, v2

    if-ltz v3, :cond_2b

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_2b

    .line 55
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 58
    :cond_2e
    check-cast v0, Ljava/lang/Iterable;

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    return-void

    .line 60
    :cond_3f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->mainTrackClipIndexList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
